import 'package:bitcoin_icons/bitcoin_icons.dart';
import 'package:bitcoin_ui_kit/bitcoin_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

List<Story> getStories(BitcoinThemeData theme) {
  return [
    // Bitcoin Elevated Button
    Story.simple(
      name: 'Simple Bitcoin Elevated Button',
      section: 'ElevatedButton',
      padding: const EdgeInsets.all(64.0),
      child: BitcoinElevatedButton(
        label: 'Create a new wallet',
        onPressed: () {},
        backgroundColor: BitcoinColors.orange,
        fontSize: 21,
        height: 60,
        textPadding: const EdgeInsets.symmetric(vertical: 19, horizontal: 20),
      ),
    ),
    Story.simple(
      name: 'Simple Bitcoin Text Button',
      section: 'ElevatedButton',
      padding: const EdgeInsets.all(64.0),
      child: BitcoinTextButton(
        onPressed: () {},
        label: 'Restore existing wallet',
        fontSize: 21,
        color: BitcoinColors.orange,
      ),
    ),
    Story(
      name: 'Bitcoin Elevated Button',
      section: 'ElevatedButton',
      builder: (_, k) => BitcoinElevatedButton(
        label: k.text(
          label: 'label',
          initial: 'Next',
        ),
        onPressed: k.boolean(
          label: 'onTap',
          initial: true,
        )
            ? () {}
            : null,
        backgroundColor: k.options(
          label: 'backgroundColor',
          initial: null,
          options: const [
            Option('Orange', BitcoinColors.orange),
            Option('Black', BitcoinColors.black),
          ],
        ),
      ),
    ),
    Story(
      name: 'InProgress Expanded Elevated Button',
      section: 'ElevatedButton',
      builder: (_, k) => BitcoinElevatedButton.inProgress(
        label: k.text(
          label: 'label',
          initial: 'Processing',
        ),
      ),
    ),

    // Bitcoin Outlined Button
    Story.simple(
      name: 'Simple Bitcoin Outlined Button',
      section: 'OutlinedButton',
      padding: const EdgeInsets.all(64.0),
      child: BitcoinOutlinedButton(
        label: 'Do this later',
        onPressed: () {},
      ),
    ),
    Story(
      name: 'Bitcoin Outlined Button with Icon',
      section: 'OutlinedButton',
      padding: const EdgeInsets.all(64.0),
      builder: (_, k) => BitcoinOutlinedButton(
        label: 'Share',
        // icon: const Icon(BitcoinIcons.share),
        onPressed: () {},
        icon: k.options(
          label: 'icons',
          initial: const Icon(BitcoinIcons.share),
          options: const [
            Option('Share', Icon(BitcoinIcons.share)),
            Option('Copy', Icon(BitcoinIcons.copy)),
          ],
        ),
      ),
    ),

    // Bitcoin Switch
    Story(
      name: 'Bitcoin Switch',
      section: 'Switch',
      padding: const EdgeInsets.all(64.0),
      builder: (_, k) => Row(
        children: [
          const Flexible(
            child: BitcoinText(
              'With bitcoin, you are your own bank.'
              'No one else has access to your private keys.',
              color: BitcoinColors.neutral7,
              textAlign: TextAlign.left,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          // Switch
          BitcoinSwitch(
            value: k.boolean(
              label: 'value',
              initial: false,
            ),
            onChanged: (val) {},
          ),
        ],
      ),
    ),

    // Bitcoin Circle Avatar
    Story(
      name: 'Circle Avatar with Icon',
      section: 'CircleAvatar',
      padding: const EdgeInsets.all(64.0),
      builder: (_, k) => BitcoinCircleAvatar(
        backgroundColor: k.options(
          label: 'backgroundColor',
          initial: BitcoinColors.green,
          options: const [
            Option('Green', BitcoinColors.green),
            Option('Purple', BitcoinColors.purple),
            Option('Blue', BitcoinColors.blue),
          ],
        ),
        child: Icon(
          k.options(
            label: 'icons',
            initial: BitcoinIcons.wallet,
            options: const [
              Option('Wallet', BitcoinIcons.wallet),
              Option('Cloud', BitcoinIcons.cloud),
              Option('Safe', BitcoinIcons.safe),
              Option('Receive', BitcoinIcons.receive),
              Option('Shield', BitcoinIcons.shield),
            ],
          ),
          color: Colors.white,
        ),
      ),
    ),

    // Bitcoin Text
    Story(
      name: 'Bitcoin Text Bold',
      section: 'BitcoinText',
      padding: const EdgeInsets.all(64.0),
      builder: (_, k) => BitcoinText(
        k.text(
          label: 'label',
          initial: 'Bitcoin wallet',
        ),
        fontWeight: FontWeight.w600,
        fontSize: k.options(label: 'fontSize', initial: 36, options: [
          const Option('Title Head', 36),
          const Option('Paragraph Head', 28),
        ]),
      ),
    ),
    Story(
      name: 'Bitcoin Text Light',
      section: 'BitcoinText',
      padding: const EdgeInsets.all(64.0),
      builder: (_, k) => const BitcoinText(
        'A simple bitcoin wallet for your enjoyment.',
        fontSize: 24,
        color: BitcoinColors.neutral7,
      ),
    ),

    // Bitcoin Text Span
    Story.simple(
      name: 'Bitcoin Text Span',
      section: 'TextSpan',
      padding: const EdgeInsets.all(64.0),
      child: RichText(
        text: TextSpan(
          children: [
            BitcoinTextSpan(
              'Fees may apply. ',
              fontSize: 18,
              color: BitcoinColors.neutral7,
            ),
            BitcoinTextSpan(
              'Learn more',
              fontSize: 18,
              color: BitcoinColors.orange,
            ),
          ],
        ),
      ),
    ),

    // Selections
    Story.simple(
      name: 'Backup Selection',
      section: 'Selections',
      padding: const EdgeInsets.all(64.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const BitcoinDivider(),
          item('Apple iCloud'),
          const BitcoinDivider(),
          item('Google Drive'),
          const BitcoinDivider(),
        ],
      ),
    ),

    Story.simple(
      name: 'Security Toggles',
      section: 'Selections',
      padding: const EdgeInsets.all(64.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const BitcoinDivider(),
          item('PIN', isSwitch: true),
          const BitcoinDivider(),
          item('Face ID', isSwitch: true),
          const BitcoinDivider(),
        ],
      ),
    ),

    // BitcoinPinEntryDots and BitcoinKeypad
    Story(
      name: 'Pin Entry Dots',
      section: 'Pin Choice',
      padding: const EdgeInsets.all(64.0),
      builder: (_, k) => BitcoinPinEntryDots(
        pin: const [1, 2],
        pinLength: k.sliderInt(
          label: 'pinLength',
          initial: 4,
          min: 4,
          max: 8,
        ),
      ),
    ),
    Story(
      name: 'Bitcoin Keypad',
      section: 'Pin Choice',
      padding: const EdgeInsets.all(16.0),
      builder: (_, k) => SizedBox(
        width: 400,
        child: BitcoinKeypad(
          onDigitPressed: (val) {},
          onCancelPressed: () {},
          iconData: BitcoinIcons.arrow_left,
        ),
      ),
    ),
  ];
}

Widget item(String itemTitle, {bool isSwitch = false}) {
  return Container(
    height: 60,
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BitcoinText(
          itemTitle,
          fontSize: 18,
          textAlign: TextAlign.left,
        ),
        !isSwitch
            ? const Icon(
                BitcoinIcons.caret_right,
                size: 30,
              )
            : BitcoinSwitch(
                value: false,
                onChanged: (value) {},
              ),
      ],
    ),
  );
}
