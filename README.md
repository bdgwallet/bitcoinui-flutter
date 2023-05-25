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
// Primary and accent colors
BitcoinUIKitColor.orange
BitcoinUIKitColor.red
BitcoinUIKitColor.green
BitcoinUIKitColor.blue
BitcoinUIKitColor.purple

// Light theme neutrals
BitcoinUIKitColor.white
BitcoinUIKitColor.neutral1
BitcoinUIKitColor.neutral2
BitcoinUIKitColor.neutral3
BitcoinUIKitColor.neutral4
BitcoinUIKitColor.neutral5
BitcoinUIKitColor.neutral6
BitcoinUIKitColor.neutral7
BitcoinUIKitColor.neutral8
BitcoinUIKitColor.black

// Dark primary and accent colors
BitcoinUIKitColor.orangeDark
BitcoinUIKitColor.redDark
BitcoinUIKitColor.greenDark
BitcoinUIKitColor.blueDark
BitcoinUIKitColor.purpleDark

// Dark theme neutrals
BitcoinUIKitColor.neutral1Dark
BitcoinUIKitColor.neutral2Dark
BitcoinUIKitColor.neutral3Dark
BitcoinUIKitColor.neutral4Dark
BitcoinUIKitColor.neutral5Dark
BitcoinUIKitColor.neutral6Dark
BitcoinUIKitColor.neutral7Dark
BitcoinUIKitColor.neutral8Dark
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
