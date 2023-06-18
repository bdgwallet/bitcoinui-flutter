import 'package:flutter/material.dart';
import 'theme/colors.dart';

/// A Bitcoin-themed icon button widget.
///
/// This widget displays an icon button with Bitcoin-themed styling. It supports customization
/// of the icon, width, height, border color, and an `onPressed` callback.
///
/// Example usage:
/// ```dart
/// BitcoinIconButton(
///   icon: Icons.send,
///   onPressed: () {
///     // Perform action on button tap
///   },
///   width: 46,
///   height: 46,
///   borderColor: Colors.orange,
/// )
/// ```
class BitcoinIconButton extends StatelessWidget {
  /// The icon to be displayed on the button.
  final IconData icon;

  /// Callback function to be invoked when the button is pressed.
  final VoidCallback onPressed;

  /// The width of the button.
  ///
  /// By default, the width is set to 46.0.
  final double width;

  /// The height of the button.
  ///
  /// By default, the height is set to 46.0.
  final double height;

  /// The border color of the button.
  ///
  /// By default, the border color is set to [BitcoinColors.defaultDisabledTextColor].
  final Color borderColor;

  /// Creates a Bitcoin-themed icon button.
  ///
  /// The [icon] is the icon to be displayed on the button. The [onPressed] callback
  /// function will be invoked when the button is pressed. The [width] and [height]
  /// properties determine the size of the button. The [borderColor] sets the color
  /// of the button's border.
  const BitcoinIconButton({
    required this.icon,
    required this.onPressed,
    this.width = 46,
    this.height = 46,
    this.borderColor = BitcoinColors.defaultDisabledTextColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Icon(icon),
      ),
    );
  }
}
