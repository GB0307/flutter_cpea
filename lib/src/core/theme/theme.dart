import 'package:cpea/src/core/theme/colors.dart';
import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

final cardTheme = CardTheme(
  color: cardColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
      cardBorderRadius,
    ),
  ),
  elevation: elevation2,
  margin: const EdgeInsets.symmetric(horizontal: 0, vertical: quarterPadding),
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
