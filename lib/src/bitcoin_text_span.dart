import 'package:flutter/material.dart';

/// A specialized `TextSpan` widget with Bitcoin-themed text styling.
///
/// The `BitcoinTextSpan` widget extends the functionality of the `TextSpan` widget
/// by providing pre-defined Bitcoin-themed text styles. It allows you to easily create
/// styled text spans with properties such as font size, font weight, color, text overflow,
/// and line height.
///
/// The `BitcoinTextSpan` constructor takes a `text` parameter, which represents the
/// text content of the span. Optional properties can be specified to customize the
/// text styling:
/// - `fontSize` adjusts the size of the text.
/// - `fontWeight` specifies the weight of the text.
/// - `color` sets the color of the text.
/// - `overflow` controls how text should be handled if it overflows its container.
/// - `height` adjusts the line height of the text.
///
/// Example usage:
/// ```dart
/// RichText(
///         text = TextSpan(
///           children: [
///             BitcoinTextSpan(
///               'Fees may apply. ',
///               fontSize: 18,
///               color: BitcoinColors.neutral7,
///             ),
///             BitcoinTextSpan(
///               'Learn more',
///               fontSize: 18,
///               color: BitcoinColors.orange,
///             ),
///           ],
///         ),
///  ),
/// ```
class BitcoinTextSpan extends TextSpan {
  /// Creates a Bitcoin-themed text span with the specified properties.
  BitcoinTextSpan(
    String text, {
    double? fontSize,
    FontWeight? fontWeight = FontWeight.w400,
    Color? color,
    TextOverflow? overflow,
    double? height = 1.4,
  }) : super(
          text: text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            overflow: overflow,
            height: height,
          ),
        );
}
