part of 'pagination_crud_cubit.dart';

@freezed
class PaginationCrudState<T> with _$PaginationCrudState<T> {
  factory PaginationCrudState(
      {required int currentPage,
      required List<T> allItems}) = _PaginationCrudState;
}
