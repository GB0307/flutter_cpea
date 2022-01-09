import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _montSerratTheme = GoogleFonts.montserratTextTheme();
final _titleTextTheme = GoogleFonts.robotoTextTheme();

final textTheme = _montSerratTheme.copyWith(
  headline4: _titleTextTheme.headline4?.copyWith(
    fontWeight: FontWeight.bold,
    color: Colors.grey[900],
  ),
  headline5: _montSerratTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
  headline6: _montSerratTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
  subtitle2: _montSerratTheme.subtitle2
      ?.copyWith(fontWeight: FontWeight.w600, color: Colors.grey[600]),
);
