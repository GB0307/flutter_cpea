typedef Serializer<T> = Map<String, dynamic> Function(T obj);
typedef Deserializer<T> = T Function(Map<String, dynamic> data);
