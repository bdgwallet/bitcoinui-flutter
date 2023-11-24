library bitcoin_ui_kit;

import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Colors

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

// Text styles

extension BitcoinTextStyle on TextStyle {
  static TextStyle title1(Color color) {
    return TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600, color: color);
  }

  static TextStyle title2(Color color) {
    return TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600, color: color);
  }

  static TextStyle title3(Color color) {
    return TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: color);
  }

  static TextStyle title4(Color color) {
    return TextStyle(fontSize: 21.0, fontWeight: FontWeight.w600, color: color);
  }

  static TextStyle title5(Color color) {
    return TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: color);
  }

  static TextStyle body1(Color color) {
    return TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400, color: color);
  }

  static TextStyle body2(Color color) {
    return TextStyle(fontSize: 21.0, fontWeight: FontWeight.w400, color: color);
  }

  static TextStyle body3(Color color) {
    return TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: color);
  }

  static TextStyle body4(Color color) {
    return TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: color);
  }

  static TextStyle body5(Color color) {
    return TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: color);
  }
}

// Buttons

const defaultButtonWidth = 315.0;
const defaultButtonHeight = 48.0;
const defaultCornerRadius = 5.0;
const defaultPadding = EdgeInsets.symmetric(vertical: 8, horizontal: 30);
const defaultTintColor = Color(0xFFF89B2A);
const defaultTextColor = Color(0xFFFFFFFF);
const defaultDisabledTintColor = Color(0xFFF4F4F4);
const defaultDisabledTextColor = Color(0xFFBBBBBB);
const defaultDisabledOutlineColor = Color(0xFFDEDEDE);

class BitcoinButtonFilled extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final double? cornerRadius;
  final Color? tintColor;
  final Color? textColor;
  final Color? disabledTintColor;
  final Color? disabledTextColor;
  final bool disabled;
  final bool isLoading;
  final bool isCapsule;
  final VoidCallback? onPressed;

  const BitcoinButtonFilled({
    Key? key,
    required this.title,
    this.textStyle,
    this.width,
    this.height,
    this.cornerRadius,
    this.tintColor,
    this.textColor,
    this.disabledTintColor,
    this.disabledTextColor,
    this.disabled = false,
    this.isLoading = false,
    this.isCapsule = true,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set conditional button values
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = width ?? screenWidth - 2 * 16;
    double buttonHeight = height ?? defaultButtonHeight;
    double buttonCornerRadius =
        cornerRadius ?? (isCapsule ? buttonHeight / 2 : defaultCornerRadius);
    Color buttonColor = disabled
        ? disabledTintColor ?? Theme.of(context).colorScheme.secondary
        : tintColor ?? Theme.of(context).colorScheme.primary;
    Color buttonTextColor = disabled
        ? disabledTextColor ?? Theme.of(context).colorScheme.onSecondary
        : textColor ?? Theme.of(context).colorScheme.onPrimary;

    if (Platform.isIOS) {
      return SizedBox(
          width: buttonWidth,
          height: height,
          child: CupertinoButton(
              color: buttonColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(buttonCornerRadius)),
              padding: defaultPadding,
              onPressed: disabled
                  ? null
                  : isLoading
                      ? (() => {})
                      : onPressed,
              child: isLoading
                  ? SizedBox(
                      height: buttonHeight * 0.5,
                      width: buttonHeight * 0.5,
                      child: Center(
                          child: CupertinoActivityIndicator(
                              color: buttonTextColor)),
                    )
                  : Text(title,
                      style: textStyle ??
                          Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: buttonTextColor))));
    } else {
      return ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor),
            padding: MaterialStateProperty.all(defaultPadding),
            fixedSize:
                MaterialStatePropertyAll(Size(buttonWidth, buttonHeight)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonCornerRadius),
              ),
            ),
            enableFeedback: true,
          ),
          onPressed: disabled
              ? null
              : isLoading
                  ? (() => {})
                  : onPressed,
          child: isLoading
              ? SizedBox(
                  height: buttonHeight * 0.5,
                  width: buttonHeight * 0.5,
                  child: Center(
                      child: CircularProgressIndicator(
                          color: buttonTextColor, strokeWidth: 2)),
                )
              : Text(
                  title,
                  style: textStyle ??
                      Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: buttonTextColor),
                ));
    }
  }
}

class BitcoinButtonOutlined extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  final double width;
  final double height;
  final double cornerRadius;
  final Color tintColor;
  final Color disabledTintColor;
  final bool disabled;
  final bool isLoading;
  final VoidCallback? onPressed;

  const BitcoinButtonOutlined({
    Key? key,
    required this.title,
    this.textStyle,
    this.width = defaultButtonWidth,
    this.height = defaultButtonHeight,
    this.cornerRadius = defaultCornerRadius,
    this.tintColor = defaultTintColor,
    this.disabledTintColor = defaultDisabledTintColor,
    this.disabled = false,
    this.isLoading = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
              // Can't use CupertinoButton here as it has no ability to set outlines
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                padding: MaterialStateProperty.all(defaultPadding),
                fixedSize: MaterialStatePropertyAll(Size(width, height)),
                side: MaterialStatePropertyAll(BorderSide(
                    width: 2.0,
                    color: disabled ? disabledTintColor : tintColor)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(cornerRadius),
                  ),
                ),
                enableFeedback: true,
              ),
              onPressed: disabled
                  ? null
                  : isLoading
                      ? (() => {})
                      : onPressed,
              child: isLoading
                  ? SizedBox(
                      height: height * 0.5,
                      width: height * 0.5,
                      child: Center(
                          child: CupertinoActivityIndicator(
                              color: disabled ? disabledTintColor : tintColor)),
                    )
                  : Text(title,
                      style: textStyle ??
                          BitcoinTextStyle.title5(
                              disabled ? disabledTintColor : tintColor))));
    } else {
      return ElevatedButton(
          style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            padding: MaterialStateProperty.all(defaultPadding),
            fixedSize: MaterialStatePropertyAll(Size(width, height)),
            side: MaterialStatePropertyAll(BorderSide(
                width: 2.0, color: disabled ? disabledTintColor : tintColor)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius),
              ),
            ),
            enableFeedback: true,
          ),
          onPressed: disabled
              ? null
              : isLoading
                  ? (() => {})
                  : onPressed,
          child: isLoading
              ? SizedBox(
                  height: height * 0.5,
                  width: height * 0.5,
                  child: Center(
                      child: CircularProgressIndicator(
                          color: disabled ? disabledTintColor : tintColor,
                          strokeWidth: 2)),
                )
              : Text(
                  title,
                  style: textStyle ??
                      BitcoinTextStyle.title5(
                          disabled ? disabledTintColor : tintColor),
                ));
    }
  }
}

class BitcoinButtonPlain extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  final double width;
  final double height;
  final double cornerRadius;
  final Color tintColor;
  final Color disabledTintColor;
  final bool disabled;
  final bool isLoading;
  final VoidCallback? onPressed;

  const BitcoinButtonPlain({
    Key? key,
    required this.title,
    this.textStyle,
    this.width = defaultButtonWidth,
    this.height = defaultButtonHeight,
    this.cornerRadius = defaultCornerRadius,
    this.tintColor = defaultTintColor,
    this.disabledTintColor = defaultDisabledTintColor,
    this.disabled = false,
    this.isLoading = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return SizedBox(
          width: width,
          height: height,
          child: CupertinoButton(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
              padding: defaultPadding,
              onPressed: disabled
                  ? null
                  : isLoading
                      ? (() => {})
                      : onPressed,
              child: isLoading
                  ? SizedBox(
                      height: height * 0.5,
                      width: height * 0.5,
                      child: Center(
                          child: CupertinoActivityIndicator(
                              color: disabled ? disabledTintColor : tintColor)),
                    )
                  : Text(title,
                      style: textStyle ??
                          BitcoinTextStyle.title5(
                              disabled ? disabledTintColor : tintColor))));
    } else {
      return ElevatedButton(
          style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            padding: MaterialStateProperty.all(defaultPadding),
            fixedSize: MaterialStatePropertyAll(Size(width, height)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius),
              ),
            ),
            enableFeedback: true,
          ),
          onPressed: disabled
              ? null
              : isLoading
                  ? (() => {})
                  : onPressed,
          child: isLoading
              ? SizedBox(
                  height: height * 0.5,
                  width: height * 0.5,
                  child: Center(
                      child: CircularProgressIndicator(
                          color: disabled ? disabledTintColor : tintColor,
                          strokeWidth: 2)),
                )
              : Text(
                  title,
                  style: textStyle ??
                      BitcoinTextStyle.title5(
                          disabled ? disabledTintColor : tintColor),
                ));
    }
  }
}
