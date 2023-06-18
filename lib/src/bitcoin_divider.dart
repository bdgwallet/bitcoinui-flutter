import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
import 'package:flutter/material.dart';

/// A horizontal line divider with Bitcoin-themed styling.
///
/// This widget displays a horizontal line divider with customizable height and color.
/// It can be used to visually separate content within a user interface.
///
/// Example usage:
/// ```dart
/// BitcoinDivider(
///   height: 2,
///   color: Colors.orange,
/// )
/// ```
class BitcoinDivider extends StatelessWidget {
  /// The height of the divider.
  ///
  /// By default, the height is set to 1.0.
  final double height;

  /// The color of the divider.
  ///
  /// By default, the color is set to `Color(0xFFDEDEDE)`.
  final Color color;

  /// Creates a Bitcoin-themed horizontal line divider.
  ///
  /// The [height] determines the thickness of the divider, and the [color]
  /// sets the color of the line. The default color is a light gray shade.
  const BitcoinDivider({
    Key? key,
    this.height = 1,
    this.color = BitcoinColors.neutral4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget implementation
    return Container(
      height: height,
      color: color,
    );
  }
}
