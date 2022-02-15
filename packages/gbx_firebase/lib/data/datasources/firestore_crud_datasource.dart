import 'package:cloud_firestore/cloud_firestore.dart' hide Query;
import 'package:cloud_firestore/cloud_firestore.dart' as firestore show Query;
import 'package:flutter/cupertino.dart';

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
    var data = serialize(item);
    await doc.set(data);
    return CRUDData(doc.id, data, deserialize);
  }

  @override
  Future<CRUDData<T>> read(String id) async {
    final data = (await col.doc(id).get()).data() ?? (throw NoDataException());
    return CRUDData(id, data, deserialize);
  }

  @override
  Future<CRUDData<T>> update(String id, T updated) async {
    final data = serialize(updated);
    await col.doc(id).update(data);

    return CRUDData(id, data, deserialize);
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
        .map((e) => CRUDData(e.id, e.data(), deserialize))
        .toList();
  }

  @protected
  Map<String, dynamic> serialize(T item) {
    var data = serializer(item);

    data.forEach((key, value) {
      if (value is DateTime) data[key] = Timestamp.fromDate(value);
    });

    return data;
  }

  @protected
  T deserialize(Map<String, dynamic> data) {
    data.forEach((key, value) {
      if (value is Timestamp) data[key] = value.toDate().toIso8601String();
    });

    return deserializer(data);
  }
}
