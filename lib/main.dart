import 'package:cpea/dependency_injector.dart';
import 'package:cpea/src/navigation/router.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await injectDependencies();

  runApp(MyApp(router: AppRouter()));
}

// TODO: REPLACE INKWELL BY GESTURE DETECTOR AND ANIMATE ELEVATION WITH ANIMATED CONTAINER, REMOVE CLIP FROM CARDS