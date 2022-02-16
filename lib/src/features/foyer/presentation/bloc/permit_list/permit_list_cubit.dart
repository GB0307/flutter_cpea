import 'package:bloc/bloc.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'permit_list_state.dart';
part 'permit_list_cubit.freezed.dart';

class PermitListCubit extends Cubit<PermitListState> {
  PermitListCubit() : super(const PermitListState.loading());
}
