import 'package:flutter/cupertino.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:gbx_core/presentation/bloc/crud/crud_cubit.dart';

class ListCrudCubit<T extends Identifiable, Extra>
    extends ICrudCubit<T, List<T>, Extra> {
  ListCrudCubit({
    required CRUDModule<T> module,
    bool initialLoad = false,
    CrudState<List<T>, Extra>? initialState,
    Extra? initialExtras,
  }) : super(
          module: module,
          initialLoad: initialLoad,
          initialState: initialState,
          initialExtras: initialExtras,
        );

  @override
  Future<DResponse<List<T>>> loadItemState() =>
      module.query(getQueryParams(false));

  @override
  Future<DResponse<List<T>>> loadRefreshedItems() =>
      module.query(getQueryParams(true));

  /// Get the query params for loading/refreshing items
  @protected
  IQueryParams<T> getQueryParams(bool isRefreshing) =>
      CacheableQueryParams(ignoreCache: isRefreshing);
}
