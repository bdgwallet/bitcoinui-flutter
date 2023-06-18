import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
import 'package:flutter/material.dart';

/// A text button with a Bitcoin-themed design.
///
/// The `BitcoinTextButton` widget is a wrapper around the `InkWell` widget that
/// provides a Bitcoin-themed appearance for a text button. It displays a
/// `BitcoinText` widget as the button's label and triggers a callback function
/// when pressed.
///
/// The `label` property specifies the text to be displayed on the button. The
/// `onPressed` callback is called when the button is pressed.
///
/// Additional customization options are available through the optional
/// properties:
/// - `fontSize` allows you to adjust the font size of the button label.
/// - `color` allows you to specify a custom text color for the button label.
///
/// Example usage:
/// ```dart
/// BitcoinTextButton(
///   label: 'Press Me',
///   onPressed: () {
///     // Handle button press
///   },
/// )
/// ```
class BitcoinTextButton extends StatelessWidget {
  /// The text to be displayed on the button.
  final String label;

  /// A callback function that is called when the button is pressed.
  final VoidCallback onPressed;

  /// The font size of the button label.
  ///
  /// By default, the font size is determined by the `BitcoinText` widget.
  final double? fontSize;

  /// The color of the button label.
  ///
  /// By default, the color is determined by the `BitcoinText` widget.
  final Color? color;

  const BitcoinTextButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.fontSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: BitcoinText(
        label,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
