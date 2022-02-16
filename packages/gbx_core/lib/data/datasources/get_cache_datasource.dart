import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:gbx_core/domain/params/query_params.dart';
import 'package:gbx_core/domain/usecases/query_data.dart';
import 'package:get_storage/get_storage.dart';

import '../../domain/entities/crud_data.dart';

class GetCacheDataSource<T extends Identifiable> extends ICRUDDataSource<T> {
  const GetCacheDataSource(
      {required this.boxName,
      required this.serializer,
      required this.deserializer})
      : super();

  final Serializer<T> serializer;
  final Deserializer<T> deserializer;

  final String boxName;

  Future<GetStorage> get box async => (await GetStorage.init(boxName))
      ? GetStorage(boxName)
      : throw Exception("couldn't open box");

  @override
  Future<CRUDData<T>> create(ICreateParams<T> params) async {
    if (params.id == null && params.item.id == null) {
      throw Exception("GetStorage requires an ID to create an item");
    }
    final id = params.id ?? params.item.id!;

    final serialized = serializer(params.item);
    (await box).write(id, serialized);
    final newData = {...serialized, 'id': id};
    return CRUDData(id, newData, deserializer);
  }

  @override
  Future<void> delete(IDeleteParams<T> params) async {
    (await box).remove(params.id);
  }

  Future<List<CRUDData<T>>> readAll() async {
    var _box = (await box);

    List<String> ids = _box.getKeys().toList();

    List<CRUDData<T>> items = ids.map(
      (key) {
        final data = _box.read<Map<String, dynamic>>(key);
        return CRUDData<T>(key, data!, deserializer);
      },
    ).toList();
    return items;
  }

  @override
  Future<List<CRUDData<T>>> query(IQueryParams<T> params) async {
    const useCase = QueryMapData();
    // Sort data
    var items = (await readAll());

    return useCase(QueryMapParams(params, items)) as List<CRUDData<T>>;
  }

  @override
  Future<CRUDData<T>> read(IReadParams<T> params) async {
    var data = (await box).read<Map<String, dynamic>>(params.id);
    if (data == null) throw NoCachedDataException();
    return CRUDData(params.id, data, deserializer);
  }

  @override
  Future<CRUDData<T>> update(IUpdateParams<T> params) async {
    final _box = (await box);
    final newData = {...serializer(params.item), 'id': params.id};
    await _box.write(params.id, newData);
    return CRUDData(params.id, newData, deserializer);
  }
}
