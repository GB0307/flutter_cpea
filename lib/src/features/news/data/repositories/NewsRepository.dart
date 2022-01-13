import 'package:cpea/src/features/news/domain/entities/news.dart';
import 'package:gbx_firebase/gbx_firebase.dart';

class NewsRepository extends FirebaseRepository<News> {
  const NewsRepository()
      : super(
          const FirestoreCRUDDataSource<News>(
            collection: 'news',
            deserializer: newsFromJson,
            serializer: newsToJson,
          ),
        );

  static News newsFromJson(Map<String, dynamic> map) => News.fromJson(map);
  static Map<String, dynamic> newsToJson(News obj) => obj.toJson();
}

//TODO: FIrebaseModule to initialize dependencies