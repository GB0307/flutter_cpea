import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:gbx_core/data/datasources/cache_datasource.dart';
import 'package:gbx_firebase/gbx_firebase.dart';

class NewsRepository extends FirebaseRepository<News> {
  const NewsRepository()
      : super(
          datasource: const FirestoreCRUDDataSource(collection: 'news'),
          serializer: newsToJson,
          deserializer: newsFromJson,
          //preferCache: true,
          //updateCacheOnQuery: true,
          //defaultUpdateLimit: 15,
        );

  static News newsFromJson(Map<String, dynamic> map) => News.fromJson(map);
  static Map<String, dynamic> newsToJson(News obj) => obj.toJson();
}
