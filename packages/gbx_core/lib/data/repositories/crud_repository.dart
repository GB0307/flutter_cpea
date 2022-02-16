import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/data/datasources/crud_datasource.dart';
import 'package:gbx_core/domain/index.dart';

class CRUDRepository<T extends Identifiable> extends ICRUDRepository<T> {
  const CRUDRepository({
    required this.datasource,
  }) : super();

  final ICRUDDataSource<T> datasource;

  @override
  Future<DResponse<T>> create(ICreateParams<T> params) =>
      runCatchingAsync(() async => (await datasource.create(params)).item);

  @override
  Future<DResponse<void>> delete(IDeleteParams<T> params) =>
      runCatchingAsync(() => datasource.delete(params));

  @override
  Future<DResponse<T>> read(IReadParams<T> params) =>
      runCatchingAsync(() async => (await datasource.read(params)).item);

  @override
  Future<DResponse<T>> update(IUpdateParams<T> params) => runCatchingAsync(
      () => datasource.update(params).map<T>((data) => data.item));

  @override
  Future<DResponse<List<T>>> query(IQueryParams<T> params,
          [bool forceRefresh = false]) =>
      runCatchingAsync(() async =>
          (await datasource.query(params)).map((e) => e.item).toList());

  @override
  IFailure? catchExceptions(Exception exception) {
    return on<NoDataException>(exception, (e) => NoDataFailure()) ??
        on<UnauthorizedException>(exception, (e) => UnauthorizedFailure());
  }
}
