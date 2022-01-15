import 'package:cloud_firestore/cloud_firestore.dart' hide Query;
import 'package:cloud_firestore/cloud_firestore.dart' as firestore show Query;

import 'package:gbx_core/gbx_core.dart';

class FirestoreCRUDDataSource<T extends Identifiable>
    extends ICRUDDataSource<T> {
  const FirestoreCRUDDataSource(
      {required this.collection,
      required this.deserializer,
      required this.serializer});

  final String collection;
  final Serializer<T> serializer;
  final Deserializer<T> deserializer;

  CollectionReference<T> get col =>
      FirebaseFirestore.instance.collection(collection).withConverter(
            fromFirestore: (snapshot, _) => fromSnapshot(snapshot),
            toFirestore: (value, options) => serializer(value),
          );

  @override
  Future<T> create(T data) async {
    var doc = col.doc();
    await doc.set(data);
    return fromMap(doc.id, {...serializer(data), 'id': doc.id});
  }

  @override
  Future<void> delete(String id) => col.doc(id).delete();

  @override
  Future<T> read(String id) async {
    var doc = col.doc(id);
    return (await doc.get()).data() ?? (throw NoDataException());
  }

  @override
  Future<T> update(T updated) async {
    var doc = col.doc(updated.id);
    var map = serializer(updated);
    await doc.update(map);
    return fromMap(doc.id, map);
  }

  T fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    if (!snapshot.exists) {
      throw NoDataException();
    }
    return fromMap(snapshot.id, snapshot.data()!);
  }

  T fromMap(String id, Map<String, dynamic> map) {
    return deserializer({...map, 'id': id});
  }

  @override
  Future<List<T>> query(QueryParams query) async {
    firestore.Query<T> q = col;
    if (query.orderBy != null) {
      q = q.orderBy(query.orderBy!, descending: !query.ascendingOrder);
    }
    if (query.startAt != null) q = q.startAt([query.startAt]);
    if (query.startAfter != null) q = q.startAfter([query.startAfter]);

    if (query.entAt != null) q = q.endAt([query.entAt]);
    if (query.endBefore != null) q = q.endBefore([query.endBefore]);

    if (query.limit != null) q = q.limit(query.limit!);
    if (query.limitLast != null) q = q.limitToLast(query.limitLast!);

    return (await q.get()).docs.map((e) => e.data()).toList();
  }
}
