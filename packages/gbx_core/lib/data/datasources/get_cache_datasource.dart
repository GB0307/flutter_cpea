import 'dart:math';

import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/params/query_params.dart';
import 'package:gbx_core/domain/usecases/query_data.dart';
import 'package:get_storage/get_storage.dart';

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

  int? _findIndex(dynamic id, List<CRUDData> items, [int modifier = 0]) {
    if (id == null) return null;
    int index = items.indexWhere((element) => element.id == id);
    if (index >= 0) return index + modifier;
  }

  @override
  Future<CRUDData<T>> create(T item, [String? id]) async {
    if (id == null && item.id == null) {
      throw Exception("GetStorage requires an ID to create an item");
    }
    final serialized = serializer(item);
    (await box).write(id ?? item.id!, serialized);
    final newData = {...serialized, 'id': id ?? item.id!};
    return CRUDData(id ?? item.id!, newData, deserializer(newData));
  }

  @override
  Future<void> delete(String id) async {
    (await box).remove(id);
  }

  @override
  Future<List<CRUDData<T>>> getAll() async {
    var _box = (await box);

    List<String> ids = _box.getKeys().toList();

    List<CRUDData<T>> items = ids.map(
      (key) {
        final data = _box.read<Map<String, dynamic>>(key);
        return CRUDData<T>(key, data!, deserializer(data));
      },
    ).toList();
    return items;
  }

  @override
  Future<List<CRUDData<T>>> query(QueryParams query) async {
    const useCase = QueryMapData();
    // Sort data
    var items = (await getAll());

    return useCase(QueryMapParams(query, items)) as List<CRUDData<T>>;
  }

  @override
  Future<CRUDData<T>> read(String id) async {
    var data = (await box).read<Map<String, dynamic>>(id);
    if (data == null) throw NoCachedDataException();
    return CRUDData(id, data, deserializer(data));
  }

  @override
  Future<CRUDData<T>> update(String id, T updated) async {
    final _box = (await box);
    final newData = {...serializer(updated), 'id': id};
    await _box.write(id, newData);
    return CRUDData(id, newData, deserializer(newData));
  }
}
