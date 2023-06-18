import 'package:flutter/material.dart';
import 'colors.dart';

abstract class BitcoinThemeData {
  ThemeData get materialThemeData;

  Color get currentColor;

  Color get oppositeColor;
}

class LightBitcoinThemeData extends BitcoinThemeData {
  @override
  ThemeData get materialThemeData => ThemeData(
        brightness: Brightness.light,
        primarySwatch: BitcoinColors.black.toMaterialColor(),
        scaffoldBackgroundColor: currentColor,
      );

  @override
  Color get currentColor => BitcoinColors.white;

  @override
  Color get oppositeColor => BitcoinColors.black;
}

class DarkBitcoinThemeData extends BitcoinThemeData {
  @override
  ThemeData get materialThemeData => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: BitcoinColors.white.toMaterialColor(),
        scaffoldBackgroundColor: currentColor,
      );

  @override
  Color get currentColor => BitcoinColors.black;

  @override
  Color get oppositeColor => BitcoinColors.white;
}

extension on Color {
  Map<int, Color> _toSwatch() => {
        50: withOpacity(0.1),
        100: withOpacity(0.2),
        200: withOpacity(0.3),
        300: withOpacity(0.4),
        400: withOpacity(0.5),
        500: withOpacity(0.6),
        600: withOpacity(0.7),
        700: withOpacity(0.8),
        800: withOpacity(0.9),
        900: this,
      };

  MaterialColor toMaterialColor() => MaterialColor(
        value,
        _toSwatch(),
      );
}
