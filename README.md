# The Bitcoin UI Kit for Flutter

WIP - This is the Flutter implementation of the Bitcoin UI Kit.

## Features

Colors
TODO: themes, icons, text styles, buttons

## Getting started

Add as dependency in your pubspec.yaml:

```dart
dependencies:
  flutter:
    sdk: flutter
  bitcoin_ui_kit:
    git:
      url: https://github.com/bdgwallet/bitcoinuikit-flutter.git
      ref: main
```

To use in any dart file, import:

```dart
import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
```

## Usage

To use the Bitcoin UI Kit colors:

```dart
BitcoinUIKitColor.orange
```

To use the Bitcoin UI Kit icons:

```dart
Image(
    image: const AssetImage("icons/bitcoin_circle_filled.png",
    package: "bitcoin_ui_kit"),
    color: BitcoinUIKitColor.orange),
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
