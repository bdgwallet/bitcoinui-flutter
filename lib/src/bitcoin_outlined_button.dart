import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
import 'package:flutter/material.dart';

/// A Bitcoin-themed outlined button widget.
///
/// This widget provides a button with an outlined appearance, commonly used for
/// triggering actions. It supports customizations such as the button label,
/// callback function, button dimensions, background color, icon, font size, and
/// line height.
///
/// Example usage:
/// ```dart
/// BitcoinOutlinedButton(
///   label: 'Submit',
///   onPressed: () {
///     // Handle button press
///   },
/// )
/// ```
class BitcoinOutlinedButton extends StatelessWidget {
  static const double _elevatedButtonHeight = 46;

  /// The label text of the button.
  final String label;

  /// Callback function to be invoked when the button is pressed.
  final VoidCallback? onPressed;

  /// The width of the button.
  ///
  /// By default, the width is set to [double.infinity].
  final double? width;

  /// The height of the button.
  ///
  /// By default, the height is set to the value of [_elevatedButtonHeight].
  final double? height;

  /// The background color of the button.
  ///
  /// By default, the background color is set to null, resulting in a transparent background.
  final Color? backgroundColor;

  /// The icon to be displayed on the button.
  ///
  /// By default, the icon is set to null.
  final Widget? icon;

  /// The font size of the button label.
  ///
  /// By default, the font size is set to 18.
  final double? fontSize;

  /// The line height of the button label.
  ///
  /// By default, the line height is set to 1.05.
  final double? lineHeight;

  /// The padding of the button label.
  ///
  /// By default, the padding is set to [EdgeInsets.symmetric(vertical: 14, horizontal: 20)].
  final EdgeInsetsGeometry? textPadding;

  const BitcoinOutlinedButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.width = double.infinity,
    this.height = _elevatedButtonHeight,
    this.backgroundColor,
    this.icon,
    this.fontSize = 18,
    this.lineHeight = 1.05,
    this.textPadding,
  }) : super(key: key);

  /// Creates a Bitcoin-themed outlined button in a loading state.
  ///
  /// The [label] parameter specifies the label text of the button. The [height]
  /// and [fontSize] parameters determine the height and font size of the button,
  /// respectively. The [key] parameter is optional.
  BitcoinOutlinedButton.inProgress({
    required String label,
    double? height,
    double? fontSize,
    Key? key,
  }) : this(
          label: label,
          icon: Transform.scale(
            scale: 0.5,
            child: const CircularProgressIndicator(),
          ),
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final icon = this.icon;
    // Widget implementation
    return SizedBox(
      width: width,
      height: height,
      child: icon != null
          ? OutlinedButton.icon(
              onPressed: onPressed,
              label: BitcoinText(
                label,
                fontWeight: FontWeight.w500,
                fontSize: fontSize,
                height: lineHeight,
              ),
              icon: icon,
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  color: BitcoinColors.defaultDisabledTextColor,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            )
          : OutlinedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  color: BitcoinColors.defaultDisabledTextColor,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: textPadding ??
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              ),
              child: Center(
                child: BitcoinText(
                  label,
                  fontWeight: FontWeight.w500,
                  fontSize: fontSize,
                  height: lineHeight,
                ),
              ),
            ),
    );
  }
}
