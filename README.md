<h1 align="center"><a href="https://pub.dev/packages/bitcoin_ui_kit">Bitcoin UI Kit Flutter Package</a></h1>

<img src="https://www.bitcoinuikit.com/assets/screens.png" alt="bitcoin_ui_kit package" />

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Bitcoin UI Kit is a comprehensive Flutter package that provides a collection of beautifully designed UI components and themes for building Bitcoin-related applications. It offers a design foundation for prototypes, concept explorations, and open-source projects, allowing you to kickstart the design process and focus on creating unique Bitcoin products.

## Features
- **Design System**: Bitcoin UI Kit offers a carefully crafted design system that includes a set of predefined colors, typography styles, and components tailored for Bitcoin-themed applications.
- **Reusable Components**: The UI kit provides a collection of reusable and customizable components such as buttons, divider, switches, avatars, pin entry, and more. These components are designed to seamlessly integrate into your Flutter projects.
- **Dynamic Theming**: Bitcoin UI Kit supports dynamic theming, allowing you to effortlessly switch between light and dark themes based on the user's preference or app configuration.

## Installation
To use Bitcoin UI Kit in your Flutter project, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  bitcoin_ui_kit: ^1.0.3
```

Then, run `flutter pub get` to fetch the package.

## Usage
Import the Bitcoin UI Kit package wherever you want to use its components:
```dart
import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
```

You can then utilize the various UI components provided by the package, such as `BitcoinElevatedButton`, `BitcoinOutlinedButton`, `BitcoinSwitch`, and more. Refer to the code examples in the package for more details on using each component effectively.

## Example Usage
```dart
import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final _lightTheme = LightBitcoinThemeData();
  final _darkTheme = DarkBitcoinThemeData();

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BitcoinTheme(
      lightTheme: _lightTheme,
      darkTheme: _darkTheme,
      child: MaterialApp(
        theme: _lightTheme.materialThemeData,
        darkTheme: _darkTheme.materialThemeData,
        // TODO: change to dark mode
        themeMode: ThemeMode.light,
        home: const BitcoinHomePage(),
      ),
    );
  }
}

class BitcoinHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bitcoin UI Kit Demo'),
      ),
      body: Center(
        child: BitcoinElevatedButton(
          label: 'Create a new wallet',
          onPressed: () {},
          backgroundColor: BitcoinColors.orange,
          fontSize: 21,
          height: 60,
          textPadding: const EdgeInsets.symmetric(vertical: 19, horizontal: 20,
          ),
        ),
      ),
    );
  }
}
```

## Showcase
Visit the [Storybook](https://aniketambore.github.io/bitcoinuikit-flutter/) to see a showcase of the widgets.

## Contributing
Bitcoin UI Kit is an open-source project, and contributions are welcome! If you find a bug, have a feature request, or want to contribute improvements, please submit an issue or a pull request in the GitHub repository.

## License
This project is licensed under the MIT License.

## Credits
Bitcoin UI Kit Flutter Package is inspired by the design principles and aesthetics of the [Bitcoin UI Kit](https://www.bitcoinuikit.com/).