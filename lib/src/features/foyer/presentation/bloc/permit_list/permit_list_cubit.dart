import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:cpea/src/features/foyer/domain/foyer_module.dart';
import 'package:gbx_core/presentation/bloc/list_crud/list_crud_cubit.dart';

class PermitListCubit extends ListCrudCubit<Permit, void> {
  PermitListCubit()
      : super(
          module: FoyerModule.instance,
          initialLoad: true,
        );
}
