import 'package:flutter/material.dart';

/// Provides predefined colors for the Bitcoin UI Kit.
///
/// The `BitcoinColors` class contains a set of predefined colors used in the Bitcoin UI Kit.
/// These colors include primary and accent colors for both light and dark themes,
/// as well as neutral colors for each theme.
///
/// Example usage:
/// ```dart
/// Container(
///   color: BitcoinColors.orange, // Use the predefined orange color
///   child: Text(
///     'Bitcoin',
///     style: TextStyle(
///       color: BitcoinColors.white, // Use the predefined white color
///       fontSize: 18,
///     ),
///   ),
/// ),
/// ```
abstract class BitcoinColors {
  // Primary and accent colors
  static const Color orange = Color(0xFFF7931A);
  static const Color red = Color(0xFFEB5757);
  static const Color green = Color(0xFF27AE60);
  static const Color blue = Color(0xFF2D9CDB);
  static const Color purple = Color(0xFFBB6BD9);

  // Light theme neutrals
  static const Color white = Color(0xFFFFFFFF);
  static const Color neutral1 = Color(0xFFF8F8F8);
  static const Color neutral2 = Color(0xFFF4F4F4);
  static const Color neutral3 = Color(0xFFEDEDED);
  static const Color neutral4 = Color(0xFFDEDEDE);
  static const Color neutral5 = Color(0xFFBBBBBB);
  static const Color neutral6 = Color(0xFF999999);
  static const Color neutral7 = Color(0xFF777777);
  static const Color neutral8 = Color(0xFF404040);
  static const Color black = Color(0xFF000000);

  // Dark primary and accent colors
  static const Color orangeDark = Color(0xFFF89B2A);
  static const Color redDark = Color(0xFFEC6363);
  static const Color greenDark = Color(0xFF36B46B);
  static const Color blueDark = Color(0xFF3CA3DE);
  static const Color purpleDark = Color(0xFFC075DC);

  // Dark theme neutrals
  static const Color neutral1Dark = Color(0xFF1A1A1A);
  static const Color neutral2Dark = Color(0xFF2D2D2D);
  static const Color neutral3Dark = Color(0xFF444444);
  static const Color neutral4Dark = Color(0xFF5C5C5C);
  static const Color neutral5Dark = Color(0xFF787878);
  static const Color neutral6Dark = Color(0xFF949494);
  static const Color neutral7Dark = Color(0xFFB0B0B0);
  static const Color neutral8Dark = Color(0xFFCCCCCC);

  // Default colors
  static const Color defaultTintColor = Color(0xFFF89B2A);
  static const Color defaultTextColor = Color(0xFFFFFFFF);
  static const Color defaultDisabledTintColor = Color(0xFFF4F4F4);
  static const Color defaultDisabledTextColor = Color(0xFFBBBBBB);
  static const Color defaultDisabledOutlineColor = Color(0xFFDEDEDE);
}
