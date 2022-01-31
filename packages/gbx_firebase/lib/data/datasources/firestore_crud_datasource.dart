import 'package:cloud_firestore/cloud_firestore.dart' hide Query;
import 'package:cloud_firestore/cloud_firestore.dart' as firestore show Query;

import 'package:gbx_core/gbx_core.dart';

class FirestoreCRUDDataSource extends ICRUDDataSource {
  const FirestoreCRUDDataSource({required this.collection}) : super();

  final String collection;

  CollectionReference<Map<String, dynamic>> get col =>
      FirebaseFirestore.instance.collection(collection);

  @override
  Future<CRUDData> create(Map<String, dynamic> data, [String? id]) async {
    final doc = col.doc(id);
    final newData = {...data, "id": doc.id};
    await doc.set(newData);
    return CRUDData(doc.id, data);
  }

  @override
  Future<CRUDData> read(String id) async {
    return CRUDData(
        id, (await col.doc(id).get()).data() ?? (throw NoDataException()));
  }

  @override
  Future<CRUDData> update(String id, Map<String, dynamic> updated) async {
    final newData = {...updated, 'id': id};
    await col.doc(id).update(newData);
    return CRUDData(id, newData);
  }

  @override
  Future<void> delete(String id) => col.doc(id).delete();

  @override
  Future<List<CRUDData>> query(QueryParams query) async {
    firestore.Query<Map<String, dynamic>> q = col;
    if (query.orderBy != null) {
      q = q.orderBy(query.orderBy!, descending: !query.ascendingOrder);
    }
    if (query.startAt != null) q = q.startAt([query.startAt]);
    if (query.startAfter != null) q = q.startAfter([query.startAfter]);

    if (query.endAt != null) q = q.endAt([query.endAt]);
    if (query.endBefore != null) q = q.endBefore([query.endBefore]);

    if (query.limit != null) q = q.limit(query.limit!);
    if (query.limitLast != null) q = q.limitToLast(query.limitLast!);

    return (await q.get()).docs.map((e) => CRUDData(e.id, e.data())).toList();
  }
}
