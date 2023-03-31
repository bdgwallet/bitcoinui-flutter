# The Bitcoin UI Kit for Flutter

WIP - This is the Flutter implementation of the [Bitcoin UI Kit](https://www.bitcoinuikit.com).

## Features

Colors

TODO: themes, icons, text styles, buttons

## Getting started

Add the package in your pubspec.yaml dependencies

```dart
dependencies:
  bitcoin_ui_kit:
    git:
      url: https://github.com/bdgwallet/bitcoinuikit-flutter.git
      ref: main
```

## Usage

To use in any dart file, import

```dart
import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
```

To use colors:

```dart
BitcoinUIKitColor.orange
```

To use icons:

```dart
Image(
    image: const AssetImage("icons/bitcoin_circle_filled.png",
    package: "bitcoin_ui_kit"),
    color: BitcoinUIKitColor.orange),
```

## Additional information

Find out more at [Bitcoin UI Kit](https://www.bitcoinuikit.com)
