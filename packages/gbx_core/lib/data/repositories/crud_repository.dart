import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/params/query_params.dart';
import 'package:gbx_core/domain/repositories/crud_repository.dart';

class CRUDRepository<T extends Identifiable> extends ICRUDRepository<T> {
  const CRUDRepository({
    required this.datasource,
    required this.serializer,
    required this.deserializer,
  }) : super();

  final Serializer<T> serializer;
  final Deserializer<T> deserializer;

  final ICRUDDataSource datasource;

  @override
  Future<DResponse<T>> create(T data) => runCatchingAsync(() async =>
      (await datasource.create(serializer(data))).map(deserializer));

  @override
  Future<DResponse<void>> delete(String id) =>
      runCatchingAsync(() => datasource.delete(id));

  @override
  Future<DResponse<T>> read(String id) => runCatchingAsync(
      () async => (await datasource.read(id)).map(deserializer));

  @override
  Future<DResponse<T>> update(String id, T updated) =>
      runCatchingAsync(() => datasource
          .update(id, serializer(updated))
          .map<T>((data) => data.map(deserializer)));

  @override
  Future<DResponse<List<T>>> query(QueryParams params) =>
      runCatchingAsync(() async => (await datasource.query(params))
          .map((e) => e.map(deserializer))
          .toList());

  @override
  IFailure? catchExceptions(Exception exception) {
    return on<NoDataException>(exception, (e) => NoDataFailure()) ??
        on<UnauthorizedException>(exception, (e) => UnauthorizedFailure());
  }
}
