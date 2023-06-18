import 'package:bitcoin_ui_kit/src/theme/bitcoin_theme.dart';
import 'package:flutter/material.dart';

/// A widget that represents a pin entry indicator with dots.
///
/// This widget is commonly used in pin entry screens or forms to display the
/// status of the entered pin. It shows filled dots for the entered pin digits
/// and empty dots for the remaining digits.
///
/// The `pin` list represents the entered pin digits. The length of the `pin`
/// list should match the `pinLength` property. The `dotRadius` property sets
/// the radius of the dots. The `spaceBetweenDots` property determines the
/// horizontal space between the dots. The `pinLength` property specifies the
/// total number of digits in the pin.
///
/// Example usage:
/// ```dart
/// BitcoinPinEntryDots(
///   pin: [1, 2],
///   pinLength: 4,
/// )
/// ```
class BitcoinPinEntryDots extends StatelessWidget {
  /// The entered pin digits.
  final List<int> pin;

  /// The radius of the dots.
  ///
  /// By default, the dot radius is set to 9.5.
  final double dotRadius;

  /// The horizontal space between the dots.
  ///
  /// By default, the space between dots is set to 8.
  final double spaceBetweenDots;

  /// The total number of digits in the pin.
  ///
  /// By default, the pin length is set to 4.
  ///
  /// Note: The pin length must be between 4 and 8.
  final int pinLength;

  const BitcoinPinEntryDots({
    Key? key,
    required this.pin,
    this.dotRadius = 9.5,
    this.spaceBetweenDots = 8,
    this.pinLength = 4,
  })  : assert(pinLength >= 4 && pinLength <= 8),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = BitcoinTheme.of(context);

    // Widget implementation
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < pin.length; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: spaceBetweenDots),
            child: CircleAvatar(
              backgroundColor: theme.oppositeColor,
              radius: dotRadius,
            ),
          ),
        for (int i = pin.length; i < pinLength; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: spaceBetweenDots),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: dotRadius + 1.5,
              child: CircleAvatar(
                backgroundColor: theme.currentColor,
                radius: dotRadius,
              ),
            ),
          ),
      ],
    );
  }
}
