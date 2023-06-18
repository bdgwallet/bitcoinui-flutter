import 'package:flutter/material.dart';
import 'bitcoin_theme_data.dart';

/// An inherited widget that provides Bitcoin-themed themes for descendant widgets.
///
/// The `BitcoinTheme` widget is an inherited widget that allows descendant widgets
/// to access the Bitcoin-themed light and dark themes defined in `BitcoinThemeData`.
/// It provides a convenient way to dynamically switch between light and dark themes
/// based on the current brightness setting of the app's theme.
///
/// To use the `BitcoinTheme`, wrap your app's widget tree with it and specify the
/// `lightTheme` and `darkTheme` properties. The `child` parameter represents the
/// root of the widget tree.
///
/// Example usage:
///
/// ```dart
/// void main() {
///   runApp(MainApp());
/// }
///
/// class MainApp extends StatelessWidget {
///   final _lightTheme = LightBitcoinThemeData();
///   final _darkTheme = DarkBitcoinThemeData();
///
///   MainApp({Key? key});
///
///   @override
///   Widget build(BuildContext context) {
///     return BitcoinTheme(
///       lightTheme: _lightTheme,
///       darkTheme: _darkTheme,
///       child: MaterialApp(
///         theme: _lightTheme.materialThemeData,
///         darkTheme: _darkTheme.materialThemeData,
///         themeMode: ThemeMode.light, // TODO: change to dark mode
///         home: const CoverScreen(),
///       ),
///     );
///   }
/// }
/// ```
class BitcoinTheme extends InheritedWidget {
  /// Creates a widget that provides Bitcoin-themed themes to its descendants.
  ///
  /// The `child` parameter represents the root of the widget tree.
  /// The `lightTheme` and `darkTheme` parameters define the Bitcoin-themed light
  /// and dark themes, respectively.
  const BitcoinTheme({
    required Widget child,
    required this.lightTheme,
    required this.darkTheme,
    Key? key,
  }) : super(key: key, child: child);

  /// The light theme data for the Bitcoin theme.
  final BitcoinThemeData lightTheme;

  /// The dark theme data for the Bitcoin theme.
  final BitcoinThemeData darkTheme;

  @override
  bool updateShouldNotify(BitcoinTheme oldWidget) =>
      oldWidget.lightTheme != lightTheme || oldWidget.darkTheme != darkTheme;

  /// Retrieves the current Bitcoin theme data based on the app's brightness.
  ///
  /// The `of` method is a static utility that allows descendant widgets to access
  /// the current Bitcoin theme data. It retrieves the current brightness setting
  /// from the app's theme and returns the corresponding Bitcoin theme data
  /// (either light or dark).
  ///
  /// If a `BitcoinTheme` widget is not found in the widget tree, an assertion error
  /// will be thrown to indicate that a `BitcoinTheme` widget must be added higher
  /// up in the widget tree.
  ///
  /// Usage example:
  ///
  /// ```dart
  /// final theme = BitcoinTheme.of(context);
  /// final currentThemeColor = theme.currentColor;
  /// ```
  static BitcoinThemeData of(BuildContext context) {
    final BitcoinTheme? inheritedTheme =
        context.dependOnInheritedWidgetOfExactType<BitcoinTheme>();

    assert(inheritedTheme != null, 'No BitcoinTheme found in context');

    final currentBrightness = Theme.of(context).brightness;

    return currentBrightness == Brightness.dark
        ? inheritedTheme!.darkTheme
        : inheritedTheme!.lightTheme;
  }
}
