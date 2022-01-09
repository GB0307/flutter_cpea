import 'package:cpea/src/core/theme/colors.dart';
import 'package:cpea/src/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

final cardTheme = CardTheme(
  color: backgroundColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  ),
);

final theme = ThemeData(
  primaryColor: primaryColor,
  primaryColorDark: primaryColorDark,
  primaryColorLight: primaryColorLight,
  textTheme: textTheme,
  backgroundColor: backgroundColor,
  scaffoldBackgroundColor: backgroundColor,
  cardTheme: cardTheme,
);
