import 'package:flutter/material.dart';

/// A circular avatar widget with Bitcoin-themed styling.
///
/// This widget displays a circular avatar with customizable radius and background color.
/// It can optionally contain a child widget inside the avatar, such as an image or an icon.
///
/// Example usage:
/// ```dart
/// BitcoinCircleAvatar(
///   child: Icon(BitcoinIcons.wallet),
///   backgroundColor: BitcoinColors.green,
/// )
/// ```
class BitcoinCircleAvatar extends StatelessWidget {
  /// The child widget to be displayed within the circle.
  ///
  /// Common examples include an [Image] or an [Icon].
  final Widget? child;

  /// The radius of the circle.
  ///
  /// By default, the radius is set to 30.0.
  final double radius;

  /// The background color of the circle.
  ///
  /// By default, no background color is applied.
  final Color? backgroundColor;

  /// Creates a Bitcoin-themed circular avatar.
  ///
  /// The [radius] determines the size of the circle, and the [backgroundColor]
  /// sets the background color of the circle. The [child] widget, if provided,
  /// will be displayed inside the circle.
  const BitcoinCircleAvatar({
    Key? key,
    this.child,
    this.radius = 30,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget implementation
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: child,
    );
  }
}
