part of 'permit_list_cubit.dart';

@freezed
class PermitListState with _$PermitListState {
  const factory PermitListState.loading() = _Loading;
  const factory PermitListState.loaded(List<Permit> permits) = _Loaded;
}
