import 'dart:math';
import 'package:gbx_core/core/errors/exceptions.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:get_storage/get_storage.dart';

// TODO: MAKE THIS A CACHE OF MAPS ONLY
abstract class ICacheDataSource<T extends Identifiable> {
  const ICacheDataSource();

  Future<T> get(String id);

  /// Gets all available data;
  Future<List<T>> getAll();

  /// Caches the data.
  Future<void> cache(T data);

  /// Caches the data.
  Future<void> cacheAll(List<T> data);

  /// Query all entries in the cache.
  Future<List<T>> query(QueryParams params);

  /// Removes an item from the cache
  ///
  /// Returns true if the data was removed,
  Future<bool> remove(String id);

  Future<bool> hasCached(String id);
}

class GetCacheDataSource<T extends Identifiable> extends ICacheDataSource<T> {
  const GetCacheDataSource(
      {required this.boxName,
      required this.deserializer,
      required this.serializer})
      : super();

  final String boxName;

  final Serializer<T> serializer;
  final Deserializer<T> deserializer;

  Future<GetStorage> get box async => (await GetStorage.init(boxName))
      ? GetStorage(boxName)
      : throw Exception("couldn't open box");

  @override
  Future<void> cache(T data) async {
    (await box).write(data.id!, serializer(data));
  }

  @override
  Future<void> cacheAll(List<T> data) async {
    await Future.wait(data.map((e) => cache(e)));
  }

  @override
  Future<T> get(String id) async {
    var json = (await box).read(id);
    if (json == null) throw NoCachedDataException();
    return deserializer(json);
  }

  @override
  Future<List<T>> getAll() async {
    var _box = (await box);

    var items = _box.getValues().map((key) => deserializer(_box.read(key)!));
    return items.toList();
  }

  @override
  Future<bool> remove(String id) async {
    var _box = (await box);

    if (!_box.hasData(id)) return false;

    _box.remove(id);
    return true;
  }

  @override
  Future<bool> hasCached(String id) async {
    return (await box).hasData(id);
  }

  @override
  Future<List<T>> query(QueryParams params) async {
    // Sort data
    var mapList = (await box).getValues().toList()
      ..sort((a, b) {
        var x = (a[params.orderBy] ?? 0).compareTo(b[params.orderBy] ?? 0);
        return x is int ? x : 0;
      });

    // Create a list of items
    var items = mapList.map<T>((e) => deserializer(e)).toList();

    // Sublist by start and end
    int startAt = _findIndex(params.startAfter ?? params.startAt, items,
            params.startAfter != null ? 1 : 0) ??
        0;
    int endAt = _findIndex(params.endAt ?? params.endBefore, items,
            params.endAt != null ? 1 : 0) ??
        items.length;
    items = items.sublist(startAt, endAt);

    // Limit items
    if (params.limit != null) {
      items = items.sublist(0, params.limit);
    } else if (params.limitLast != null) {
      items = items.sublist(
          max<int>(0, items.length - (params.limitLast ?? 0)), items.length);
    }

    // ORDER
    if (!params.ascendingOrder) {
      items = items.reversed.toList();
    }

    return items;
  }

  int? _findIndex(dynamic id, List<T> items, [int modifier = 0]) {
    if (id == null) return null;
    int index = items.indexWhere((element) => element.id == id);
    if (index >= 0) return index + modifier;
  }
}
