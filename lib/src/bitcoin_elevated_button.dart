import 'package:flutter/material.dart';
import 'bitcoin_text.dart';

/// A Bitcoin-themed elevated button widget.
///
/// This widget displays a button with Bitcoin-themed design. It supports customization
/// of the button's label, background color, width, height, font size, and more.
/// It can also display an optional icon alongside the label.
///
/// Example usage:
/// ```dart
/// BitcoinElevatedButton(
///   label: 'Send Bitcoin',
///   onPressed: () {
///     // Perform action on button tap
///   },
///   backgroundColor: Colors.orange,
///   icon: Icon(Icons.send),
///   fontSize: 18,
/// )
/// ```
class BitcoinElevatedButton extends StatelessWidget {
  static const double _elevatedButtonHeight = 46;

  /// The label to be displayed on the button.
  final String label;

  /// Callback function to be invoked when the button is pressed.
  final VoidCallback? onPressed;

  /// The width of the button.
  ///
  /// By default, the width is set to [double.infinity].
  final double? width;

  /// The height of the button.
  ///
  /// By default, the height is set to [_elevatedButtonHeight].
  final double? height;

  /// The background color of the button.
  final Color? backgroundColor;

  /// An optional icon widget to be displayed alongside the label.
  final Widget? icon;

  /// The font size of the button label.
  ///
  /// By default, the font size is set to 18.
  final double? fontSize;

  /// The line height of the button label.
  ///
  /// By default, the line height is set to 1.05.
  final double? lineHeight;

  /// The padding around the button label.
  final EdgeInsetsGeometry? textPadding;

  /// Creates a Bitcoin-themed elevated button.
  ///
  /// The [label] is the text to be displayed on the button. The [onPressed] callback
  /// function will be invoked when the button is pressed. The [width] and [height]
  /// properties determine the size of the button. The [backgroundColor] sets the
  /// background color of the button. The [icon], if provided, will be displayed
  /// alongside the label. The [fontSize] and [lineHeight] control the text styling.
  /// The [textPadding] sets the padding around the button label.
  const BitcoinElevatedButton({
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

  /// Creates a Bitcoin-themed elevated button with an in-progress state.
  ///
  /// This factory constructor is useful when you want to display a loading or
  /// in-progress state for the button. The [label] is the text to be displayed on
  /// the button. The [height] and [fontSize] properties control the size of the button
  /// and the text, respectively.
  factory BitcoinElevatedButton.inProgress({
    required String label,
    double? height,
    double? fontSize,
    Key? key,
  }) {
    return BitcoinElevatedButton(
      label: label,
      icon: Transform.scale(
        scale: 0.5,
        child: const CircularProgressIndicator(),
      ),
      key: key,
      height: height ?? _elevatedButtonHeight,
      fontSize: fontSize ?? 18,
    );
  }

  @override
  Widget build(BuildContext context) {
    final icon = this.icon;
    return SizedBox(
      width: width,
      height: height,
      child: icon != null
          ? ElevatedButton.icon(
              onPressed: onPressed,
              label: BitcoinText(
                label,
                fontWeight: FontWeight.w500,
                fontSize: fontSize,
                height: lineHeight,
              ),
              icon: icon,
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: textPadding ??
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              ),
              child: BitcoinText(
                label,
                fontWeight: FontWeight.w500,
                fontSize: fontSize,
                height: lineHeight,
              ),
            ),
    );
  }
}
