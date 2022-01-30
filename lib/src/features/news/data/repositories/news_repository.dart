import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:gbx_core/data/datasources/cache_datasource.dart';
import 'package:gbx_firebase/gbx_firebase.dart';

class NewsRepository extends CachedFirebaseRepository<News> {
  const NewsRepository()
      : super(
          deserializer: newsFromJson,
          serializer: newsToJson,
          cacheDataSource: const GetCacheDataSource(
              boxName: 'news',
              deserializer: newsFromJson,
              serializer: newsToJson),
          datasource: const FirestoreCRUDDataSource<News>(
            collection: 'news',
            deserializer: newsFromJson,
            serializer: newsToJson,
          ),
          preferCache: true,
          updateCacheOnQuery: true,
          defaultUpdateLimit: 15,
        );

  static News newsFromJson(Map<String, dynamic> map) => News.fromJson(map);
  static Map<String, dynamic> newsToJson(News obj) => obj.toJson();
}
