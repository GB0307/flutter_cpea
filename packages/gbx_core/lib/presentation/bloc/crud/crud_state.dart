part of 'crud_cubit.dart';

@freezed
class CrudState<T, Extra>
    with _$CrudState<T, Extra>
    implements _ExtraHolder<Extra> {
  factory CrudState.noData([Extra? extras]) = _$NoData<T, Extra>;

  factory CrudState.loading([Extra? extras]) = _$Loading<T, Extra>;

  factory CrudState.loadingMore(T data, [Extra? extras]) =
      _$LoadingMore<T, Extra>;

  factory CrudState.reloading(T data, [Extra? extras]) = _$Reloading<T, Extra>;

  factory CrudState.loaded(T data, [Extra? extras]) = _$Loaded<T, Extra>;

  factory CrudState.error(IFailure failure, [Extra? extras]) =
      _$Error<T, Extra>;
}

abstract class _ExtraHolder<E> {
  _ExtraHolder(this.extras);
  final E? extras;
}
