import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

/// A customizable switch widget with a Bitcoin-themed design.
///
/// The `BitcoinSwitch` widget is a wrapper around the `FlutterSwitch` widget
/// that provides a Bitcoin-themed appearance. It allows the user to toggle
/// between two states, typically representing an on/off or enabled/disabled
/// state.
///
/// The `value` property determines the current state of the switch. The
/// `onChanged` callback is called when the user toggles the switch, and it
/// provides the new state as a parameter.
///
/// Additional customization options are available through the optional
/// properties:
/// - `height` and `width` control the dimensions of the switch.
/// - `toggleSize` determines the size of the toggle button.
/// - `borderRadius` sets the border radius of the switch.
/// - `activeColor` and `inactiveColor` specify the colors for the switch when
///   it is in the active and inactive states, respectively.
/// - `activeToggleColor` and `inactiveToggleColor` define the colors for the
///   toggle button when the switch is in the active and inactive states,
///   respectively.
///
/// Example usage:
/// ```dart
/// BitcoinSwitch(
///   value: _isSwitchOn,
///   onChanged: (value) {
///     setState(() {
///       _isSwitchOn = value;
///     });
///   },
/// )
/// ```
class BitcoinSwitch extends StatelessWidget {
  /// The current state of the switch.
  final bool value;

  /// A callback function that is called when the switch is toggled.
  ///
  /// The new state of the switch is passed as a parameter to the callback.
  final Function(bool) onChanged;

  /// The height of the switch.
  ///
  /// By default, the height is set to 28.
  final double height;

  /// The width of the switch.
  ///
  /// By default, the width is set to 45.
  final double width;

  /// The size of the toggle button.
  ///
  /// By default, the toggle size is set to 20.
  final double toggleSize;

  /// The border radius of the switch.
  ///
  /// By default, the border radius is set to 14.
  final double borderRadius;

  /// The color of the switch when it is in the active state.
  ///
  /// By default, the active color is set to `BitcoinColors.defaultDisabledOutlineColor`.
  final Color activeColor;

  /// The color of the toggle button when the switch is in the active state.
  ///
  /// By default, the active toggle color is set to `Colors.white`.
  final Color activeToggleColor;

  /// The color of the switch when it is in the inactive state.
  ///
  /// By default, the inactive color is set to `BitcoinColors.defaultDisabledOutlineColor`.
  final Color inactiveColor;

  /// The color of the toggle button when the switch is in the inactive state.
  ///
  /// By default, the inactive toggle color is set to `Colors.white`.
  final Color inactiveToggleColor;

  const BitcoinSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
    this.height = 28,
    this.width = 45,
    this.toggleSize = 20,
    this.borderRadius = 14,
    this.activeColor = BitcoinColors.defaultDisabledOutlineColor,
    this.activeToggleColor = Colors.white,
    this.inactiveColor = BitcoinColors.defaultDisabledOutlineColor,
    this.inactiveToggleColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: FlutterSwitch(
        value: value,
        height: height,
        width: width,
        toggleSize: toggleSize,
        borderRadius: borderRadius,
        activeColor: activeColor,
        activeToggleColor: activeToggleColor,
        inactiveColor: inactiveColor,
        inactiveToggleColor: inactiveToggleColor,
        onToggle: (value) => onChanged(value),
      ),
    );
  }
}
