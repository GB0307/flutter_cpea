import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/domain/index.dart';

part 'crud_state.dart';
part 'crud_cubit.freezed.dart';

abstract class ICrudCubit<M extends Identifiable, R, Extra>
    extends Cubit<CrudState<R, Extra>> {
  ICrudCubit({
    required this.module,
    CrudState<R, Extra>? initialState,
    Extra? initialExtras,
    bool initialLoad = false,
  }) : super(initialState ??
            (initialLoad
                ? CrudState.loading(initialExtras)
                : CrudState.noData(initialExtras))) {
    if (initialLoad) loadData();
  }

  final CRUDModule<M> module;

  /// Used to load the data into the bloc.
  Future<void> loadData([bool cleanData = false]) => executeLoading(
        () async => await responseToState(await loadItemState()),
        ignoreCurrentData: cleanData,
      );

  /// Used to get a item state from the module, usually you should return a module
  /// function like query or read.
  @protected
  Future<DResponse<R>> loadItemState();

  /// Refreshes the current data, usually this is called when the user wants to
  /// reload the items on screen to fetch new data.
  Future<void> refreshData([bool cleanData = false]) => executeLoading(
        () async => responseToState(await loadRefreshedItems()),
        ignoreCurrentData: cleanData,
      );

  /// Used to get a item state from the module, usually you should return a module
  /// function like query or read.
  @protected
  Future<DResponse<R>> loadRefreshedItems();

  Future<void> cleanData() async {
    emit(CrudState.noData(state.extras));
  }

  /// Handles errors that may occur while loading data
  /// If the error is handled correctly, then emit a new state and return true,
  /// otherwhise, return false, and an error state will be emitted.
  @protected
  Future<CrudState<R, Extra>> handleFailure(IFailure failure) async {
    if (failure is NoDataFailure) return CrudState.noData(state.extras);
    return CrudState.error(failure, state.extras);
  }

  /// Handles exceptions that may occur while executing jobs
  /// If the exception is handled correctly, then emit a new state and return true,
  /// otherwhise, return false, and an error state will be emitted.
  @protected
  Future<CrudState<R, Extra>> handleException(Exception exception) async {
    return CrudState.error(GeneralFailure(exception), state.extras);
  }

  /// Executes some kind of job, emits loading while it is processing and catch
  /// exceptions along the way.
  @protected
  Future<void> executeLoading(Future<CrudState<R, Extra>> Function() job,
      {bool ignoreCurrentData = false}) async {
    var currentData = ignoreCurrentData
        ? null
        : state.whenOrNull(
            reloading: (data, extra) => data,
            loaded: (data, extra) => data,
          );

    emit(currentData != null
        ? CrudState.reloading(currentData, state.extras)
        : CrudState.loading(state.extras));
    try {
      emit(await job.call());
    } on Exception catch (e) {
      emit(await handleException(e));
    }
  }

  /// Map a response into a loaded crud response, in case of a failure it calls
  /// handleFailure.
  @protected
  Future<CrudState<R, Extra>> responseToState(DResponse<R> response) {
    return response.on(
      failure: (failure) => handleFailure(failure),
      success: (data) async {
        if (data == null || (data is List && data.isEmpty)) {
          return CrudState.noData(state.extras);
        }
        return handleSuccess(data);
      },
    );
  }

  /// Called to map a succeded response data into a crud state
  @protected
  CrudState<R, Extra> handleSuccess(R data) {
    return CrudState.loaded(data, state.extras);
  }
}
