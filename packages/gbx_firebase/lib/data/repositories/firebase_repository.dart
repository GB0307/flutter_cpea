import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_firebase/gbx_firebase.dart';

class FirebaseRepository<T extends Identifiable> extends CRUDRepository<T> {
  const FirebaseRepository(
      {required ICRUDDataSource datasource,
      required Serializer<T> serializer,
      required Deserializer<T> deserializer})
      : super(
            datasource: datasource,
            deserializer: deserializer,
            serializer: serializer);

  @override
  IFailure? catchExceptions(Exception exception) {
    return on<FirebaseException>(exception, (e) => FirebaseFailure(e));
  }
}
