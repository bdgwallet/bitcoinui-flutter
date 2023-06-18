import 'package:flutter/material.dart';
import 'bitcoin_text.dart';

/// A Bitcoin-themed keypad widget.
///
/// This widget provides a keypad layout commonly used for numeric input.
/// It supports digit input callbacks, cancellation callback, and customization
/// of the font size, cancel button icon, and icon size.
///
/// Example usage:
/// ```dart
/// BitcoinKeypad(
///   onDigitPressed: (digit) {
///     // Handle digit input
///   },
///   onCancelPressed: () {
///     // Handle cancellation
///   },
///   fontSize: 24,
///   iconData: Icons.arrow_back_sharp,
///   iconSize: 30,
/// )
/// ```
class BitcoinKeypad extends StatelessWidget {
  /// Callback function to be invoked when a digit button is pressed.
  final Function(int) onDigitPressed;

  /// Callback function to be invoked when the cancel button is pressed.
  final Function() onCancelPressed;

  /// The font size of the digit buttons.
  ///
  /// By default, the font size is set to 24.
  final double fontSize;

  /// The icon to be displayed on the cancel button.
  ///
  /// By default, the icon is set to Icons.arrow_back_sharp.
  final IconData iconData;

  /// The size of the cancel button icon.
  ///
  /// By default, the icon size is set to 30.
  final double iconSize;

  /// Creates a Bitcoin-themed keypad.
  ///
  /// The [onDigitPressed] callback function will be invoked when a digit button
  /// is pressed, passing the pressed digit as an argument. The [onCancelPressed]
  /// callback function will be invoked when the cancel button is pressed. The
  /// [fontSize] property determines the font size of the digit buttons. The [iconData]
  /// property sets the icon to be displayed on the cancel button. The [iconSize]
  /// property determines the size of the cancel button icon.
  const BitcoinKeypad({
    Key? key,
    required this.onDigitPressed,
    required this.onCancelPressed,
    this.fontSize = 24,
    this.iconData = Icons.arrow_back_sharp,
    this.iconSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget implementation
    return LayoutBuilder(
      builder: (context, constraints) {
        final buttonSize = constraints.maxWidth / 4;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Rows of digit buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 1; i <= 3; i++)
                  _KeypadButton(
                    digit: i,
                    onPressed: () => onDigitPressed(i),
                    buttonFontSize: fontSize,
                    buttonSize: buttonSize,
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 4; i <= 6; i++)
                  _KeypadButton(
                    digit: i,
                    onPressed: () => onDigitPressed(i),
                    buttonFontSize: fontSize,
                    buttonSize: buttonSize,
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 7; i <= 9; i++)
                  _KeypadButton(
                    digit: i,
                    onPressed: () => onDigitPressed(i),
                    buttonFontSize: fontSize,
                    buttonSize: buttonSize,
                  ),
              ],
            ),
            // Row with zero digit button and cancel button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: SizedBox(),
                ),
                _KeypadButton(
                  digit: 0,
                  onPressed: () => onDigitPressed(0),
                  buttonFontSize: fontSize,
                  buttonSize: buttonSize,
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: IconButton(
                    icon: Icon(iconData, size: iconSize),
                    onPressed: () => onCancelPressed(),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _KeypadButton extends StatelessWidget {
  final int digit;
  final Function() onPressed;
  final double buttonFontSize;
  final double buttonSize;

  const _KeypadButton({
    Key? key,
    required this.digit,
    required this.onPressed,
    required this.buttonFontSize,
    required this.buttonSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonSize,
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.all(0),
          ),
        ),
        onPressed: onPressed,
        child: FittedBox(
          child: BitcoinText(
            digit.toString(),
            fontSize: buttonFontSize,
            height: 27 / buttonFontSize,
          ),
        ),
      ),
    );
  }
}
