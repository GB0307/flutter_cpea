import 'package:cpea/firebase_options.dart';
import 'package:cpea/src/core/utils/env_variables.dart';
import 'package:cpea/src/features/news/data/repositories/news_repository.dart';
import 'package:cpea/src/features/news/domain/news_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gbx_core/core/interfaces/index.dart';
import 'package:gbx_firebase_login/gbx_firebase_login.dart';

import 'src/features/login/domain/entities/user_data.dart';

Future injectDependencies() async {
  var firebaseInitializer = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  var envInitializer = EnvVariables.loadEnvVariables();

  await Future.wait([firebaseInitializer, envInitializer]);

  await GbxFirebaseLogin.initializeWith<UserData>(
    serializer: (obj) => obj.toJson(),
    deserializer: (data) => UserData.fromJson(data),
  );

  await IModule.initializeAll([
    NewsModule(repository: const NewsRepository()),
  ]);
}
