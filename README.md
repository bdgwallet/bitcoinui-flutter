# Bitcoin UI

This is the Flutter implementation of the [Bitcoin UI Kit](https://www.bitcoinuikit.com).

## Getting started

Add the package in your pubspec.yaml dependencies

```dart
dependencies:
  bitcoin_ui: : ^2.0.0
```

## Usage

Import in the dart file where you want to use it

```dart
import 'package:bitcoin_ui/bitcoin_ui.dart';
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

## Text styles

There are five title styles and five body styles, each with a color parameter.

```dart
// Title styles
BitcoinTextStyle.title1(Bitcoin.black)
BitcoinTextStyle.title2(Bitcoin.black)
BitcoinTextStyle.title3(Bitcoin.black)
BitcoinTextStyle.title4(Bitcoin.black)
BitcoinTextStyle.title5(Bitcoin.black)

// Body styles
BitcoinTextStyle.body1(Bitcoin.black)
BitcoinTextStyle.body2(Bitcoin.black)
BitcoinTextStyle.body3(Bitcoin.black)
BitcoinTextStyle.body4(Bitcoin.black)
BitcoinTextStyle.body5(Bitcoin.black)
```

## Buttons

There are three styles of buttons in the UI Kit

- BitcoinButtonFilled
- BitcoinButtonOutlined
- BitcoinButtonPlain

They each have optional parameters like, textStyle, width, height, tintColor, textColor (for BitcoinButtonFilled), cornerRadius and the ability to set disabled and isLoading states. By default, they use colors from the Flutter Theme and are capsule shaped, although this can be overridden.

```dart
BitcoinButtonFilled(
  title: "Filled",
  onPressed: () {
    debugPrint("Test button press");
  }
),
```

## Icons

Most of the icons from [Bitcoin Icons](https://github.com/BitcoinDesign/Bitcoin-Icons) are included.

```dart
Image(
    image: const AssetImage("icons/bitcoin_circle.png",
    package: "bitcoin_ui_kit"),
    color: Bitcoin.orange),
```

## Additional information

Find out more at [Bitcoin UI Kit](https://www.bitcoinuikit.com)
