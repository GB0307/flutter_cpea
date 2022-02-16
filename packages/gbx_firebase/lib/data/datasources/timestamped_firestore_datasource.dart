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
  Future<CRUDData<T>> create(ICreateParams<T> params) async {
    final doc = col.doc(params.id);
    var newData = dataToJson(doc.id, params.item);
    await doc.set(newData);
    if (createdTimestampKey == null && lastUpdatedTimestampKey == null) {
      return CRUDData(doc.id, newData, deserialize);
    }
    return read(ReadParams(id: doc.id));
  }

  @override
  Future<CRUDData<T>> update(IUpdateParams<T> params) async {
    final newData = dataToJson(params.id, params.item);
    await col.doc(params.id).update(newData);

    if (lastUpdatedTimestampKey == null) {
      return CRUDData(params.id, newData, deserialize);
    }
    return read(ReadParams(id: params.id));
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
