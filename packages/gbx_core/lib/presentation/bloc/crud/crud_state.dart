part of 'crud_cubit.dart';

@freezed
class CrudState<T> with _$CrudState<T> {
  const factory CrudState.noData() = _$NoData;
  const factory CrudState.loading() = _$Loading;
  factory CrudState.reloading(T data) = _$Reloading<T>;
  factory CrudState.loaded(T data) = _$Loaded<T>;
  factory CrudState.error(IFailure failure) = _$Error;
}
