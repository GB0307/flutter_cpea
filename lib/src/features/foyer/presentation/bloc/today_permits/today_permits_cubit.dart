import 'package:bloc/bloc.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:cpea/src/features/foyer/domain/foyer_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/gbx_core.dart';

part 'today_permits_state.dart';
part 'today_permits_cubit.freezed.dart';

class TodayPermitsCubit extends Cubit<TodayPermitsState> {
  TodayPermitsCubit() : super(const TodayPermitsState.loading()) {
    loadPermits();
  }

  FoyerModule get module => FoyerModule.instance;

  void loadPermits() async {
    emit(const TodayPermitsState.loading());

    var now = DateTime.now();
    var dayStart = DateTime(now.year, now.month, now.day);
    var dayEnd = DateTime(now.year, now.month, now.day + 1);
    var results = await module.query(
      QueryParams(
          orderBy: "endDate", startAt: dayStart.toIso8601String(), limit: 50),
    );

    var state = results.on<TodayPermitsState>(
      failure: (failure) => failure is NoDataFailure
          ? const TodayPermitsState.noData()
          : TodayPermitsState.failed(failure),
      success: (data) {
        var fdata = data
            .whereIndexed(
                (index, element) => element.startDate.isBefore(dayEnd))
            .toList();

        return data.isEmpty
            ? const TodayPermitsState.noData()
            : TodayPermitsState.loaded(fdata);
      },
    );

    emit(state);
  }
}
