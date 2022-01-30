import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_firebase/gbx_firebase.dart';

class FirebaseRepository<T extends Identifiable> extends CRUDRepository<T> {
  const FirebaseRepository(ICRUDDataSource<T> _datasource) : super(_datasource);
  FirebaseRepository.from(
      {required String collection,
      required Deserializer<T> deserializer,
      required Serializer<T> serializer})
      : super(FirestoreCRUDDataSource(
            collection: collection,
            deserializer: deserializer,
            serializer: serializer));

  @override
  IFailure? catchExceptions(Exception exception) {
    return on<FirebaseException>(exception, (e) => FirebaseFailure(e));
  }
}
