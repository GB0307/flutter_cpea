import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/params/query_params.dart';
import 'package:gbx_core/domain/repositories/crud_repository.dart';

class CRUDRepository<T extends Identifiable> extends ICRUDRepository<T> {
  const CRUDRepository({
    required this.datasource,
  }) : super();

  final ICRUDDataSource<T> datasource;

  @override
  Future<DResponse<T>> create(T data) =>
      runCatchingAsync(() async => (await datasource.create(data)).item);

  @override
  Future<DResponse<void>> delete(String id) =>
      runCatchingAsync(() => datasource.delete(id));

  @override
  Future<DResponse<T>> read(String id) =>
      runCatchingAsync(() async => (await datasource.read(id)).item);

  @override
  Future<DResponse<T>> update(String id, T updated) => runCatchingAsync(
      () => datasource.update(id, updated).map<T>((data) => data.item));

  @override
  Future<DResponse<List<T>>> query(QueryParams params) => runCatchingAsync(
      () async => (await datasource.query(params)).map((e) => e.item).toList());

  @override
  IFailure? catchExceptions(Exception exception) {
    return on<NoDataException>(exception, (e) => NoDataFailure()) ??
        on<UnauthorizedException>(exception, (e) => UnauthorizedFailure());
  }
}
