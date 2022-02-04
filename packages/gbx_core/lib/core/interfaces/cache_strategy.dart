import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/index.dart';

abstract class CacheStrategy {
  const CacheStrategy();

  Future<CRUDData<T>> read<T extends Identifiable>({
    required String id,
    required ICRUDDataSource<T> datasource,
    required ICRUDDataSource<T> cacheDatasource,
  });

  Future<List<CRUDData<T>>> query<T extends Identifiable>({
    required QueryParams params,
    required ICRUDDataSource<T> datasource,
    required ICRUDDataSource<T> cacheDatasource,
  });

  factory CacheStrategy.cacheFirst() => const CacheFirstStrategy();
  factory CacheStrategy.serverFirst() => const ServerFirstStrategy();
  factory CacheStrategy.updatingCacheFirst(String orderBy) =>
      UpdatingCacheFirstStrategy(orderBy: orderBy);
}

class CacheFirstStrategy extends CacheStrategy {
  const CacheFirstStrategy() : super();

  @override
  Future<List<CRUDData<T>>> query<T extends Identifiable>(
      {required QueryParams params,
      required ICRUDDataSource<T> datasource,
      required ICRUDDataSource<T> cacheDatasource}) {
    try {
      return cacheDatasource.query(params);
    } on NoCachedDataException {
      return datasource.query(params);
    }
  }

  @override
  Future<CRUDData<T>> read<T extends Identifiable>(
      {required String id,
      required ICRUDDataSource<T> datasource,
      required ICRUDDataSource<T> cacheDatasource}) {
    try {
      return cacheDatasource.read(id);
    } on NoCachedDataException {
      return datasource.read(id);
    }
  }
}

class ServerFirstStrategy extends CacheStrategy {
  const ServerFirstStrategy() : super();

  @override
  Future<List<CRUDData<T>>> query<T extends Identifiable>(
      {required QueryParams params,
      required ICRUDDataSource<T> datasource,
      required ICRUDDataSource<T> cacheDatasource}) {
    try {
      return datasource.query(params);
    } on NoCachedDataException {
      return cacheDatasource.query(params);
    }
  }

  @override
  Future<CRUDData<T>> read<T extends Identifiable>(
      {required String id,
      required ICRUDDataSource<T> datasource,
      required ICRUDDataSource<T> cacheDatasource}) {
    try {
      return datasource.read(id);
    } on NoCachedDataException {
      return cacheDatasource.read(id);
    }
  }
}

class UpdatingCacheFirstStrategy extends CacheFirstStrategy {
  const UpdatingCacheFirstStrategy({required this.orderBy}) : super();

  final String orderBy;

  @override
  Future<List<CRUDData<T>>> query<T extends Identifiable>(
      {required QueryParams params,
      required ICRUDDataSource<T> datasource,
      required ICRUDDataSource<T> cacheDatasource}) async {
    final lastItem = await _getLastCachedData(cacheDatasource);

    if (lastItem != null) {
      await _updateCache(lastItem, datasource, cacheDatasource);
    } else {
      // No cache, get from server
      final items = await datasource.query(params);
      // Save data
      await Future.wait(
          items.map((item) => cacheDatasource.update(item.id, item.item)));
      return items;
    }

    final items = await super.query(
        params: params,
        datasource: datasource,
        cacheDatasource: cacheDatasource);
    return items;
  }

  Future<Map<String, dynamic>?> _getLastCachedData(
      ICRUDDataSource cacheDatasource) async {
    var lastItems = (await cacheDatasource
        .query(QueryParams(limit: 1, orderBy: orderBy, ascendingOrder: false)));
    return lastItems.isEmpty ? null : lastItems.first.data;
  }

  Future<void> _updateCache<T extends Identifiable>(
      Map<String, dynamic> lastItem,
      ICRUDDataSource<T> datasource,
      ICRUDDataSource<T> cacheDatasource) async {
    final items = await datasource.query(QueryParams(
        orderBy: orderBy, ascendingOrder: false, endBefore: lastItem[orderBy]));
    await Future.wait(items.map((e) => cacheDatasource.update(e.id, e.item)));
  }
}
