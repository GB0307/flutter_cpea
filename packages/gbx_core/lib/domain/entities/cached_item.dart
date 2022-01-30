import 'package:gbx_core/core/interfaces/serializer.dart';

class CachedItem<T> {
  const CachedItem({
    required this.deserializer,
    required this.id,
    required this.data,
  });

  final String id;
  final Map<String, dynamic> data;

  final Deserializer<T> deserializer;

  T get item => deserializer(data);
}

typedef CachedItems<T> = List<CachedItem<T>>;

extension _CachedUtils<T> on CachedItems<T> {
  List<Map<String, dynamic>> get data => map((e) => e.data).toList();
  List<T> get items => map((e) => e.item).toList();
}
