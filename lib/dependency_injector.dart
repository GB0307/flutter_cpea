import 'package:cpea/firebase_options.dart';
import 'package:cpea/src/core/utils/env_variables.dart';
import 'package:cpea/src/features/login/login_module.dart';
import 'package:cpea/src/features/login/data/datasources/cached_user_data_datasource.dart';
import 'package:cpea/src/features/login/data/datasources/user_data_datasource.dart';
import 'package:cpea/src/features/login/data/datasources/user_datasource.dart';
import 'package:cpea/src/features/login/data/repositories/user_data_repository.dart';
import 'package:cpea/src/features/login/data/repositories/user_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gbx_core/gbx_core.dart';

Future injectDependencies() async {
  var firebaseInitializer = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  var envInitializer = EnvVariables.loadEnvVariables();

  await Future.wait([firebaseInitializer, envInitializer]);

  await IModule.initializeAll([
    LoginModule(
      UserRepository(UserDataSource()),
      const UserDataRepository(
        UserDataDataSource(),
        CachedUserDataDataSource(),
      ),
    ),
  ]);
}
