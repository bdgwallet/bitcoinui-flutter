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
Bitcoin.orange
Bitcoin.red
Bitcoin.green
Bitcoin.blue
Bitcoin.purple

// Light theme neutrals
Bitcoin.white
Bitcoin.neutral1
Bitcoin.neutral2
Bitcoin.neutral3
Bitcoin.neutral4
Bitcoin.neutral5
Bitcoin.neutral6
Bitcoin.neutral7
Bitcoin.neutral8
Bitcoin.black
```

![image](https://github.com/bdgwallet/bitcoinuikit-flutter/assets/3393669/dd843296-6336-4920-b9e6-93dae58f4697)

```dart
// Dark primary and accent colors
Bitcoin.orangeDark
Bitcoin.redDark
Bitcoin.greenDark
Bitcoin.blueDark
Bitcoin.purpleDark

// Dark theme neutrals
Bitcoin.neutral1Dark
Bitcoin.neutral2Dark
Bitcoin.neutral3Dark
Bitcoin.neutral4Dark
Bitcoin.neutral5Dark
Bitcoin.neutral6Dark
Bitcoin.neutral7Dark
Bitcoin.neutral8Dark
```

![image](https://github.com/bdgwallet/bitcoinuikit-flutter/assets/3393669/65d5a45a-67cb-4972-bfde-b2f21f62a822)

## Icons

```dart
Image(
    image: const AssetImage("icons/bitcoin_circle_filled.png",
    package: "bitcoin_ui_kit"),
    color: Bitcoin.orange),
```

## ToDo

- Themes
- All icons
- Text styles
- Button styles

## Additional information

Find out more at [Bitcoin UI Kit](https://www.bitcoinuikit.com)
