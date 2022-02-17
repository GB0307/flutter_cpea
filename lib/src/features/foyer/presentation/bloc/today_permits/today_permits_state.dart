part of 'today_permits_cubit.dart';

@freezed
class TodayPermitsState with _$TodayPermitsState {
  const factory TodayPermitsState.loading() = _Loading;
  factory TodayPermitsState.loaded(List<Permit> permits) = _Loaded;
  const factory TodayPermitsState.noData() = _NoData;
  const factory TodayPermitsState.failed(IFailure failure) = _Failed;
}
