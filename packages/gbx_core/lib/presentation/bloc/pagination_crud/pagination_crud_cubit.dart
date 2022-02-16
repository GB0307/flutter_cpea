import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/presentation/bloc/crud/crud_cubit.dart';
import 'package:gbx_core/presentation/bloc/list_crud/list_crud_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/index.dart';

part 'pagination_crud_state.dart';
part 'pagination_crud_cubit.freezed.dart';

// TODO: Maybe create interfaces and implement then into different freezed states
class PaginationCrudCubit<T extends Identifiable>
    extends ListCrudCubit<T, PaginationCrudState<T>> {
  PaginationCrudCubit({
    required String id,
    required CRUDModule<T> module,
    PaginationCrudState<T>? initialExtras,
    bool initialLoad = false,
    CrudState<List<T>, PaginationCrudState<T>>? initialState,
    this.itemsPerPage = 20,
  })  : assert(true, "NOT READY FOR IMPLEMENTATION"),
        super(
          module: module,
          initialExtras: initialExtras,
          initialLoad: initialLoad,
          initialState: initialState,
        );

  final int itemsPerPage;

  /// Get the query params for loading/refreshing items
  @override
  IQueryParams<T> getQueryParams(bool isRefreshing) =>
      CacheableQueryParams(ignoreCache: isRefreshing);
}
