import 'package:cloud_firestore/cloud_firestore.dart' hide Query;
import 'package:cloud_firestore/cloud_firestore.dart' as firestore show Query;

import 'package:gbx_core/gbx_core.dart';

class FirestoreCRUDDataSource<T extends Identifiable>
    extends ICRUDDataSource<T> {
  const FirestoreCRUDDataSource({
    required this.collection,
    required this.serializer,
    required this.deserializer,
  }) : super();

  final String collection;

  final Serializer<T> serializer;
  final Deserializer<T> deserializer;

  CollectionReference<Map<String, dynamic>> get col =>
      FirebaseFirestore.instance.collection(collection);

  @override
  Future<CRUDData<T>> create(T item, [String? id]) async {
    final doc = col.doc(id);
    final newData = {...serializer(item), "id": doc.id};
    await doc.set(newData);
    return CRUDData(doc.id, newData, deserializer(newData));
  }

  @override
  Future<CRUDData<T>> read(String id) async {
    final data = (await col.doc(id).get()).data() ?? (throw NoDataException());
    return CRUDData(id, data, deserializer(data));
  }

  @override
  Future<CRUDData<T>> update(String id, T updated) async {
    final newData = {...serializer(updated), 'id': id};
    await col.doc(id).update(newData);
    return CRUDData(id, newData, deserializer(newData));
  }

  @override
  Future<void> delete(String id) => col.doc(id).delete();

  @override
  Future<List<CRUDData<T>>> query(QueryParams query) async {
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

    return (await q.get())
        .docs
        .map((e) => CRUDData(e.id, e.data(), deserializer(e.data())))
        .toList();
  }
}
