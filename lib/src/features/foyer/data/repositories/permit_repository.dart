import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/index.dart';
import 'package:gbx_firebase/data/datasources/firestore_crud_datasource.dart';

class PermitRepository extends CRUDRepository<Permit> {
  PermitRepository({String collection = 'permits'})
      : super(
          datasource: CacheableCRUDDataSource(
            cacheStrategy: CacheStrategy.updatingCacheFirst('lastUpdated'),
            datasource: FirestoreCRUDDataSource(
              collection: collection,
              serializer: _permitToJson,
              deserializer: _permitFromJson,
            ),
            cacheDatasource: GetCacheDataSource(
                boxName: collection,
                serializer: _permitToJson,
                deserializer: _permitFromJson),
          ),
        );

  static Map<String, dynamic> _permitToJson(Permit permit) => permit.toJson();
  static Permit _permitFromJson(Map<String, dynamic> json) =>
      Permit.fromJson(json);
}
// TODO: INJECT LAST UPDATED AND CREATED DATE