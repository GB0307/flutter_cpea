import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:cpea/src/features/login/domain/repositories/user_data_repository.dart';
import 'package:gbx_core/gbx_core.dart';

class GetCachedUserData extends IResponseUseCase<UserData, String?> {
  const GetCachedUserData(this._repo);

  final IUserDataRepository _repo;

  @override
  // ignore: avoid_renaming_method_parameters
  DResponse<UserData> call([String? tag]) {
    return _repo.getCachedUserData();
  }
}
