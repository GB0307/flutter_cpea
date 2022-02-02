import 'package:gbx_core/core/errors/exceptions.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/index.dart';

abstract class ICacheStrategy {
  const ICacheStrategy();

  Future<CRUDData> read({
    required String id,
    required ICRUDDataSource datasource,
    required ICRUDDataSource cacheDatasource,
  });

  Future<List<CRUDData>> query({
    required QueryParams params,
    required ICRUDDataSource datasource,
    required ICRUDDataSource cacheDatasource,
  });

  factory ICacheStrategy.cacheFirst() => const CacheFirstStrategy();
  factory ICacheStrategy.serverFirst() => const ServerFirstStrategy();
  factory ICacheStrategy.updatingCacheFirst(String orderBy) =>
      UpdatingCacheFirstStrategy(orderBy: orderBy);
}

class CacheFirstStrategy extends ICacheStrategy {
  const CacheFirstStrategy() : super();

  @override
  Future<List<CRUDData>> query(
      {required QueryParams params,
      required ICRUDDataSource datasource,
      required ICRUDDataSource cacheDatasource}) {
    try {
      return cacheDatasource.query(params);
    } on NoCachedDataException {
      return datasource.query(params);
    }
  }

  @override
  Future<CRUDData> read(
      {required String id,
      required ICRUDDataSource datasource,
      required ICRUDDataSource cacheDatasource}) {
    try {
      return cacheDatasource.read(id);
    } on NoCachedDataException {
      return datasource.read(id);
    }
  }
}

class ServerFirstStrategy extends ICacheStrategy {
  const ServerFirstStrategy() : super();

  @override
  Future<List<CRUDData>> query(
      {required QueryParams params,
      required ICRUDDataSource datasource,
      required ICRUDDataSource cacheDatasource}) {
    try {
      return datasource.query(params);
    } on NoCachedDataException {
      return cacheDatasource.query(params);
    }
  }

  @override
  Future<CRUDData> read(
      {required String id,
      required ICRUDDataSource datasource,
      required ICRUDDataSource cacheDatasource}) {
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
  Future<List<CRUDData>> query(
      {required QueryParams params,
      required ICRUDDataSource datasource,
      required ICRUDDataSource cacheDatasource}) async {
    final lastItem = await _getLastCachedData(cacheDatasource);

    if (lastItem != null) {
      await _updateCache(lastItem, datasource, cacheDatasource);
    }

    return super.query(
        params: params,
        datasource: datasource,
        cacheDatasource: cacheDatasource);
  }

  Future<Map<String, dynamic>?> _getLastCachedData(
      ICRUDDataSource cacheDatasource) async {
    var lastItems = (await cacheDatasource
        .query(QueryParams(limit: 1, orderBy: orderBy, ascendingOrder: false)));
    return lastItems.isEmpty ? null : lastItems.first.data;
  }

  Future<void> _updateCache(Map<String, dynamic> lastItem,
      ICRUDDataSource datasource, ICRUDDataSource cacheDatasource) async {
    final items = await datasource.query(QueryParams(
        orderBy: orderBy, ascendingOrder: false, endBefore: lastItem[orderBy]));
    await Future.wait(items.map((e) => cacheDatasource.update(e.id, e.data)));
  }
}
