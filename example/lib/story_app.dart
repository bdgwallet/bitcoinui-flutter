import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
import 'package:example/component_storybook.dart';
import 'package:flutter/material.dart';

class StoryApp extends StatelessWidget {
  StoryApp({Key? key}) : super(key: key);

  final _lightTheme = LightBitcoinThemeData();
  final _darkTheme = DarkBitcoinThemeData();

  @override
  Widget build(BuildContext context) {
    return BitcoinTheme(
      lightTheme: _lightTheme,
      darkTheme: _darkTheme,
      child: ComponentStorybook(
        lightThemeData: _lightTheme.materialThemeData,
        darkThemeData: _darkTheme.materialThemeData,
      ),
    );
  }
}
