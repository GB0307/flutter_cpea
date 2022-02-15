import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_firebase/data/datasources/firestore_crud_datasource.dart';

class TimestampedFirestoreDataSource<T extends Identifiable>
    extends FirestoreCRUDDataSource<T> {
  TimestampedFirestoreDataSource({
    required String collection,
    required Serializer<T> serializer,
    required Deserializer<T> deserializer,

    /// Setting this will update the property to the server timestamp
    this.lastUpdatedTimestampKey,
    this.createdTimestampKey,
  }) : super(
          collection: collection,
          serializer: serializer,
          deserializer: deserializer,
        );

  final String? lastUpdatedTimestampKey;
  final String? createdTimestampKey;

  @override
  Future<CRUDData<T>> create(T item, [String? id]) async {
    final doc = col.doc(id);
    var newData = dataToJson(doc.id, item);
    await doc.set(newData);
    if (createdTimestampKey == null && lastUpdatedTimestampKey == null) {
      return CRUDData(doc.id, newData, deserialize);
    }
    return read(doc.id);
  }

  @override
  Future<CRUDData<T>> update(String id, T updated) async {
    final newData = dataToJson(id, updated);
    await col.doc(id).update(newData);

    if (lastUpdatedTimestampKey == null) {
      return CRUDData(id, newData, deserialize);
    }
    return read(id);
  }

  Map<String, dynamic> dataToJson(String id, T data) {
    var newData = {...serialize(data), 'id': id};
    if (lastUpdatedTimestampKey != null) {
      newData[lastUpdatedTimestampKey!] = FieldValue.serverTimestamp();
    }
    if (createdTimestampKey != null && newData[createdTimestampKey!] == null) {
      newData[createdTimestampKey!] = FieldValue.serverTimestamp();
    }
    return newData;
  }
}
