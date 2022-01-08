import 'package:cpea/src/core/interfaces/response.dart';
import 'package:cpea/src/core/interfaces/use_case.dart';
import 'package:cpea/src/features/login/domain/entities/user_data.dart';
import 'package:cpea/src/features/login/domain/repositories/user_data_repository.dart';

class GetCachedUserData extends IResponseUseCase<UserData, String?> {
  const GetCachedUserData(this._repo);

  final IUserDataRepository _repo;

  @override
  // ignore: avoid_renaming_method_parameters
  DResponse<UserData> call([String? tag]) {
    return _repo.getCachedUserData();
  }
}
