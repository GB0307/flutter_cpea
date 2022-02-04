import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/datasources/cacheable_crud_datasource.dart';
import 'package:gbx_core/data/datasources/get_cache_datasource.dart';
import 'package:gbx_firebase/gbx_firebase.dart';

class NewsRepository extends FirebaseRepository<News> {
  const NewsRepository()
      : super(
          datasource: const CacheableCRUDDataSource(
            cacheStrategy: UpdatingCacheFirstStrategy(orderBy: 'publishedAt'),
            datasource: FirestoreCRUDDataSource(
              collection: 'news',
              serializer: newsToJson,
              deserializer: newsFromJson,
            ),
            cacheDatasource: GetCacheDataSource(
                boxName: 'news',
                deserializer: newsFromJson,
                serializer: newsToJson),
          ),
        );

  static News newsFromJson(Map<String, dynamic> map) => News.fromJson(map);
  static Map<String, dynamic> newsToJson(News obj) => obj.toJson();
}
