
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData _base(Brightness b) => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.indigo,
      brightness: b,
    ),
  );

  static ThemeData get light => _base(Brightness.light);
  static ThemeData get dark  => _base(Brightness.dark);
}
