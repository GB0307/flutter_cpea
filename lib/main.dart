import 'package:cpea/dependency_injector.dart';
import 'package:cpea/src/navigation/router.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await injectDependencies();

  runApp(MyApp(router: AppRouter()));
}

// TODO: TURN CACHE DATA SOURCE INTO A MAPPER WITH THE POSSIBILITY TO SERIALIZE/DESERIALIZE
// TODO: CREATE A CACHE STRATEGY CLASS TO HANDLE HOW THE DATA IS CACHED (use default order for caching)