import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class L18n {
  static const locales = [
    Locale('pt', ''),
    Locale('en', ''),
  ];

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizations.delegate;

  static AppLocalizations of(BuildContext context) {
    return AppLocalizations.of(context)!;
  }

  static AppLocalizations get tr {
    return of(Get.context!);
  }
}
