import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_firebase/errors/failures.dart';

class FirebaseRepository<T extends Identifiable> extends CRUDRepository<T> {
  const FirebaseRepository(ICRUDDataSource<T> _datasource) : super(_datasource);

  @override
  IFailure? catchExceptions(Exception exception) {
    return on<FirebaseException>(exception, (e) => FirebaseFailure(e));
  }
}
