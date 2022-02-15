import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/index.dart';
import 'package:gbx_firebase/gbx_firebase.dart';

class PermitRepository extends CRUDRepository<Permit> {
  PermitRepository({String collection = 'permits'})
      : super(
          datasource: CacheableCRUDDataSource(
            cacheStrategy: CacheStrategy.updatingCacheFirst('lastUpdated'),
            datasource: TimestampedFirestoreDataSource(
              collection: collection,
              serializer: _permitToJson,
              deserializer: _permitFromJson,
              lastUpdatedTimestampKey: 'lastUpdated',
              createdTimestampKey: 'creationDate',
            ),
            cacheDatasource: GetCacheDataSource(
              boxName: collection,
              serializer: _permitToJson,
              deserializer: _permitFromJson,
            ),
          ),
        );

  static Map<String, dynamic> _permitToJson(Permit permit) => permit.toJson();
  static Permit _permitFromJson(Map<String, dynamic> json) =>
      Permit.fromJson(json);
}
// TODO: INJECT LAST UPDATED AND CREATED DATE