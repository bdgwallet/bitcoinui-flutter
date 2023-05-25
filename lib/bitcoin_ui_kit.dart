library bitcoin_ui_kit;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension Bitcoin on Color {
  // Primary and accent colors
  static Color get orange => const Color(0xFFF7931A);
  static Color get red => const Color(0xFFEB5757);
  static Color get green => const Color(0xFF27AE60);
  static Color get blue => const Color(0xFF2D9CDB);
  static Color get purple => const Color(0xFFBB6BD9);

  // Light theme neutrals
  static Color get white => const Color(0xFFFFFFFF);
  static Color get neutral1 => const Color(0xFFF8F8F8);
  static Color get neutral2 => const Color(0xFFF4F4F4);
  static Color get neutral3 => const Color(0xFFEDEDED);
  static Color get neutral4 => const Color(0xFFDEDEDE);
  static Color get neutral5 => const Color(0xFFBBBBBB);
  static Color get neutral6 => const Color(0xFF999999);
  static Color get neutral7 => const Color(0xFF777777);
  static Color get neutral8 => const Color(0xFF404040);
  static Color get black => const Color(0xFF000000);

  // Dark primary and accent colors
  static Color get orangeDark => const Color(0xFFF89B2A);
  static Color get redDark => const Color(0xFFEC6363);
  static Color get greenDark => const Color(0xFF36B46B);
  static Color get blueDark => const Color(0xFF3CA3DE);
  static Color get purpleDark => const Color(0xFFC075DC);

  // Dark theme neutrals
  static Color get neutral1Dark => const Color(0xFF1A1A1A);
  static Color get neutral2Dark => const Color(0xFF2D2D2D);
  static Color get neutral3Dark => const Color(0xFF444444);
  static Color get neutral4Dark => const Color(0xFF5C5C5C);
  static Color get neutral5Dark => const Color(0xFF787878);
  static Color get neutral6Dark => const Color(0xFF949494);
  static Color get neutral7Dark => const Color(0xFFB0B0B0);
  static Color get neutral8Dark => const Color(0xFFCCCCCC);
}
