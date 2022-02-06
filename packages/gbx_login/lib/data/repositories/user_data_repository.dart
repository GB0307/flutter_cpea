import 'package:gbx_core/gbx_core.dart';
import 'package:gbx_login/domain/errors/exceptions.dart';
import 'package:gbx_login/domain/errors/failures.dart';

class UserDataRepository<T extends Identifiable> extends CRUDRepository<T> {
  const UserDataRepository({required ICRUDDataSource<T> datasource})
      : super(datasource: datasource);

  @override
  IFailure? catchExceptions(Exception exception) {
    return super.catchExceptions(exception) ??
        on<UserNotLoggedInException>(
            exception, (e) => UserNotLoggedInFailure()) ??
        on<UserDataNotFoundException>(
            exception, (e) => UserDataNotFoundFailure());
  }
}
