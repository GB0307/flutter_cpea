import 'package:gbx_core/core/index.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:gbx_core/presentation/bloc/crud/crud_cubit.dart';

class SingleItemCrudCubit<T extends Identifiable, Extra>
    extends ICrudCubit<T, T, Extra> {
  SingleItemCrudCubit({
    required this.id,
    required CRUDModule<T> module,
    bool initialLoad = false,
    CrudState<T, Extra>? initialState,
  }) : super(
            module: module,
            initialLoad: initialLoad,
            initialState: initialState);

  final String id;

  @override
  Future<DResponse<T>> loadItemState() => module.read(ReadParams(id: id));

  @override
  Future<DResponse<T>> loadRefreshedItems() =>
      module.read(CacheableReadParams(id: id, ignoreCache: true));
}
