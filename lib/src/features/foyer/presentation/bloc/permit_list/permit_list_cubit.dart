import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:cpea/src/features/foyer/domain/foyer_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/domain/params/index.dart';

part 'permit_list_state.dart';
part 'permit_list_cubit.freezed.dart';

class PermitListCubit extends Cubit<PermitListState> {
  PermitListCubit() : super(const PermitListState.loading()) {
    loadPermits();
  }

  FoyerModule get module => FoyerModule.instance;

  void loadPermits() async {
    emit(const PermitListState.loading());

    var now = DateTime.now();
    var results = await module.query(
      QueryParams(
        orderBy: "endDate",
        startAt: DateTime(now.year, now.month, now.day).toIso8601String(),
      ),
    );

    var state = results.on<PermitListState>(
      failure: (failure) => failure is NoDataFailure
          ? const PermitListState.noData()
          : PermitListState.failed(failure),
      success: (data) => data.isEmpty
          ? const PermitListState.noData()
          : PermitListState.loaded(data),
    );

    emit(state);
  }
}
