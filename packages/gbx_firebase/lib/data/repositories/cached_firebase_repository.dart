import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gbx_core/data/repositories/cached_crud_repository.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_firebase/gbx_firebase.dart';

class CachedFirebaseRepository<T extends Identifiable>
    extends CachedCRUDRepository<T> {
  const CachedFirebaseRepository({
    required ICRUDDataSource<T> datasource,
    required ICacheDataSource<T> cacheDataSource,
    int defaultUpdateLimit = 100,
    bool preferCache = true,
    bool updateCacheOnQuery = true,
  }) : super(
          datasource: datasource,
          cacheDatasource: cacheDataSource,
          defaultUpdateLimit: defaultUpdateLimit,
          preferCache: preferCache,
          updateCacheOnQuery: updateCacheOnQuery,
        );
  CachedFirebaseRepository.from({
    required String collection,
    required Deserializer<T> deserializer,
    required Serializer<T> serializer,
    required String boxName,
    int defaultUpdateLimit = 100,
    bool preferCache = true,
    bool updateCacheOnQuery = true,
  }) : super(
          datasource: FirestoreCRUDDataSource(
              collection: collection,
              deserializer: deserializer,
              serializer: serializer),
          cacheDatasource: GetCacheDataSource(
              boxName: boxName,
              deserializer: deserializer,
              serializer: serializer),
          defaultUpdateLimit: defaultUpdateLimit,
          preferCache: preferCache,
          updateCacheOnQuery: updateCacheOnQuery,
        );

  @override
  IFailure? catchExceptions(Exception exception) {
    return on<FirebaseException>(exception, (e) => FirebaseFailure(e)) ??
        on<NoCachedDataException>(exception, (e) => NoCachedDataFailure());
  }
}
