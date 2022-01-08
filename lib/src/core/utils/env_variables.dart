import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Contains all of your .env variables
abstract class EnvVariables {
  static String get googleClientId => dotenv.env["GOOGLE_CLIENT_ID"]!;

  static Future<void> loadEnvVariables() async {
    await dotenv.load(fileName: ".env");
  }
}
