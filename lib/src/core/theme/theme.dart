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

const dividerTheme = DividerThemeData(thickness: 1);

final appBarTheme = AppBarTheme(
  elevation: elevation1,
  backgroundColor: backgroundColor,
  centerTitle: true,
  titleTextStyle: textTheme.headline6,
  toolbarHeight: appBarHeight,
  iconTheme: const IconThemeData(size: 32, color: primaryColor),
  actionsIconTheme: const IconThemeData(size: 32, color: primaryColor),
);

final theme = ThemeData(
  primaryColor: primaryColor,
  primaryColorDark: primaryColorDark,
  primaryColorLight: primaryColorLight,
  textTheme: textTheme,
  backgroundColor: backgroundColor,
  scaffoldBackgroundColor: backgroundColor,
  cardTheme: cardTheme,
  dividerTheme: dividerTheme,
  appBarTheme: appBarTheme,
);
