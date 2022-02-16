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
  Future<CRUDData<T>> create(ICreateParams<T> params) async {
    final doc = col.doc(params.id);
    var data = serialize(params.item);
    await doc.set(data);
    return CRUDData(doc.id, data, deserialize);
  }

  @override
  Future<CRUDData<T>> read(IReadParams<T> params) async {
    final data =
        (await col.doc(params.id).get()).data() ?? (throw NoDataException());
    return CRUDData(params.id, data, deserialize);
  }

  @override
  Future<CRUDData<T>> update(IUpdateParams<T> params) async {
    final data = serialize(params.item);
    await col.doc(params.id).update(data);

    return CRUDData(params.id, data, deserialize);
  }

  @override
  Future<void> delete(IDeleteParams<T> params) => col.doc(params.id).delete();

  @override
  Future<List<CRUDData<T>>> query(IQueryParams params) async {
    firestore.Query<Map<String, dynamic>> q = col;
    if (params.orderBy != null) {
      q = q.orderBy(params.orderBy!, descending: !params.ascendingOrder);
    }
    if (params.startAt != null) q = q.startAt([params.startAt]);
    if (params.startAfter != null) q = q.startAfter([params.startAfter]);

    if (params.endAt != null) q = q.endAt([params.endAt]);
    if (params.endBefore != null) q = q.endBefore([params.endBefore]);

    if (params.limit != null) q = q.limit(params.limit!);
    if (params.limitLast != null) q = q.limitToLast(params.limitLast!);

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
