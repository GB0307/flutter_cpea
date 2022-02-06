import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_firebase/data/datasources/firestore_crud_datasource.dart';

class FirestoreUserDataDataSource<T extends Identifiable>
    extends FirestoreCRUDDataSource<T> {
  const FirestoreUserDataDataSource({
    String collection = "users",
    required Serializer<T> serializer,
    required Deserializer<T> deserializer,
  }) : super(
            collection: collection,
            serializer: serializer,
            deserializer: deserializer);
}
