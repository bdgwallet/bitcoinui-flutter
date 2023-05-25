# The Bitcoin UI Kit for Flutter

This is the Flutter implementation of the [Bitcoin UI Kit](https://www.bitcoinuikit.com).
It is a work in proggress, not all features are implemented yet

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

Import in the dart file where you want to use it

```dart
import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
```

## Colors

```dart
// Light primary and accent colors
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
```

![image](https://github.com/bdgwallet/bitcoinuikit-flutter/assets/3393669/dd843296-6336-4920-b9e6-93dae58f4697)

```dart
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
![image](https://github.com/bdgwallet/bitcoinuikit-flutter/assets/3393669/65d5a45a-67cb-4972-bfde-b2f21f62a822)

## Icons

```dart
Image(
    image: const AssetImage("icons/bitcoin_circle_filled.png",
    package: "bitcoin_ui_kit"),
    color: BitcoinUIKitColor.orange),
```
## ToDo

- Themes
- All icons
- Text styles
- Button styles

## Additional information

Find out more at [Bitcoin UI Kit](https://www.bitcoinuikit.com)
