import 'package:flutter/material.dart';
import 'package:next_stop/core/theme/app_pallet.dart';

class AppTheme {
  static final ThemeData darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallet.backgroundColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      displaySmall: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
    ),
  );
}
