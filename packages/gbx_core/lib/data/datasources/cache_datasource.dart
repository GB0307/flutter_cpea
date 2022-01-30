import 'dart:math';
import 'package:gbx_core/core/errors/exceptions.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:get_storage/get_storage.dart';

// TODO: MAKE THIS A CACHE OF MAPS ONLY
abstract class ICacheDataSource<T extends Identifiable> {
  const ICacheDataSource(
      {required this.serializer, required this.deserializer});

  final Serializer<T> serializer;
  final Deserializer<T> deserializer;

  Future<CachedItem<T>> get(String id);

  /// Gets all available data;
  Future<CachedItems<T>> getAll();

  /// Caches the data.
  Future<void> cache(T data) => cacheData(data.id!, serializer(data));

  /// Caches the map data.
  Future<void> cacheData(String id, Map<String, dynamic> data);

  /// Caches the data.
  Future<void> cacheAll(List<T> data) => cacheAllData(data
      .map((e) => MapEntry<String, Map<String, dynamic>>(e.id!, serializer(e)))
      .toList());

  /// Caches the map data of the object.
  Future<void> cacheAllData(
          List<MapEntry<String, Map<String, dynamic>>> entries) async =>
      await Future.wait(entries.map((e) => cacheData(e.key, e.value)));

  /// Query all entries in the cache.
  Future<CachedItems<T>> query(QueryParams params);

  /// Removes an item from the cache
  ///
  /// Returns true if the data was removed,
  Future<bool> remove(String id);

  Future<bool> hasCached(String id);
}

class GetCacheDataSource<T extends Identifiable> extends ICacheDataSource<T> {
  const GetCacheDataSource(
      {required this.boxName,
      required Deserializer<T> deserializer,
      required Serializer<T> serializer})
      : super(serializer: serializer, deserializer: deserializer);

  final String boxName;

  Future<GetStorage> get box async => (await GetStorage.init(boxName))
      ? GetStorage(boxName)
      : throw Exception("couldn't open box");

  @override
  Future<void> cacheData(String id, Map<String, dynamic> data) async {
    (await box).write(id, data);
  }

  @override
  Future<CachedItem<T>> get(String id) async {
    var json = (await box).read(id);
    if (json == null) throw NoCachedDataException();
    return CachedItem(deserializer: deserializer, id: id, data: json);
  }

  @override
  Future<CachedItems<T>> getAll() async {
    var _box = (await box);

    List<String> ids = _box.getKeys().toList();

    List<CachedItem<T>> items = ids
        .map(
          (key) => CachedItem<T>(
              id: key, data: _box.read(key)!, deserializer: deserializer),
        )
        .toList();
    return items;
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
  Future<CachedItems<T>> query(QueryParams params) async {
    // Sort data
    var items = (await getAll())
      ..sort((a, b) {
        var x = (a.data[params.orderBy] ?? 0)
            .compareTo(b.data[params.orderBy] ?? 0);
        return x is int ? x : 0;
      });

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

  int? _findIndex(dynamic id, List<CachedItem> items, [int modifier = 0]) {
    if (id == null) return null;
    int index = items.indexWhere((element) => element.id == id);
    if (index >= 0) return index + modifier;
  }
}
