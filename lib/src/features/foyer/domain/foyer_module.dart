import 'package:cpea/src/features/foyer/data/repositories/permit_repository.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:gbx_core/domain/index.dart';
import 'package:get/get.dart';

class FoyerModule extends CRUDModule<Permit> {
  FoyerModule() : super(repository: PermitRepository());

  static FoyerModule get instance => Get.find<FoyerModule>();

  @override
  Future<void> injectSelf() async {
    Get.put<FoyerModule>(this);
  }
}
