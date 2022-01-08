import 'package:cpea/src/core/interfaces/response.dart';
import 'package:cpea/src/core/interfaces/use_case.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetCurrentUser extends IUseCase<User?, NoParams> {
  @override
  DResponse<User?> call([NoParams params = const NoParams()]) {
    return DResponse<User?>.from(FirebaseAuth.instance.currentUser);
  }
}
