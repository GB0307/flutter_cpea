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
  elevation: elevation1,
  margin: const EdgeInsets.all(halfPadding),
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
