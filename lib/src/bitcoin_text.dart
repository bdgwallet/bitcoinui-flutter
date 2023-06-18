import 'dart:ui';
import 'package:flutter/material.dart';

/// A specialized text widget with Bitcoin-themed text styling.
///
/// The `BitcoinText` widget is a convenient way to display text with pre-defined
/// Bitcoin-themed text styles. It extends the functionality of the `Text` widget
/// by providing default Bitcoin font settings and allows you to customize properties
/// such as font weight, line height, font size, color, font features, text alignment,
/// and text overflow behavior.
///
/// The `BitcoinText` constructor takes a required `data` parameter, which represents
/// the text to be displayed. Optional properties can be specified to customize the
/// text styling:
/// - `fontWeight` specifies the weight of the text.
/// - `height` adjusts the line height of the text.
/// - `fontSize` adjusts the size of the text.
/// - `color` sets the color of the text.
/// - `fontFeatures` provides advanced typographic features.
/// - `textAlign` controls the alignment of the text.
/// - `overflow` controls how text should be handled if it overflows its container.
///
/// Example usage:
/// ```dart
/// BitcoinText(
///   'Hello, Bitcoin!',
///   fontSize: 18,
///   fontWeight: FontWeight.bold,
///   color: Colors.black,
///   textAlign: TextAlign.center,
/// )
/// ```
class BitcoinText extends StatelessWidget {
  /// Creates a Bitcoin-themed text widget with the specified properties.
  const BitcoinText(
    this.data, {
    Key? key,
    this.fontWeight = FontWeight.w400,
    this.height = 1.4,
    this.fontSize,
    this.color,
    this.fontFeatures,
    this.textAlign = TextAlign.center,
    this.overflow,
  }) : super(key: key);

  /// The text to be displayed.
  final String data;

  /// The weight of the text.
  final FontWeight? fontWeight;

  /// The line height of the text.
  final double? height;

  /// The size of the text.
  final double? fontSize;

  /// The color of the text.
  final Color? color;

  /// Advanced typographic features of the text.
  final List<FontFeature>? fontFeatures;

  /// The alignment of the text.
  final TextAlign? textAlign;

  /// How text should be handled if it overflows its container.
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontFamily: 'Inter',
        fontWeight: fontWeight,
        height: height,
        fontSize: fontSize,
        color: color,
        fontFeatures: fontFeatures,
      ),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
