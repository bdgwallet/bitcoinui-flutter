import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
import 'package:example/stories.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ComponentStorybook extends StatelessWidget {
  final ThemeData lightThemeData, darkThemeData;

  const ComponentStorybook({
    Key? key,
    required this.lightThemeData,
    required this.darkThemeData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = BitcoinTheme.of(context);
    return Storybook(
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: ThemeMode.light,
      initialRoute: 'simple-bitcoin-elevated-button',
      children: [
        ...getStories(theme),
      ],
    );
  }
}
