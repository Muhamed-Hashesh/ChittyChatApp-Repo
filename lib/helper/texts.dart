import 'package:flutter/material.dart';

Text mediumText(BuildContext context, {Color? color, required String? text}) {
  return Text(
    text!,
    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: color,
        ),
  );
}

Text smallText(BuildContext context, {Color? color, required String? text}) {
  return Text(
    text!,
    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: color,
        ),
  );
}

Text largeText(BuildContext context, {Color? color}) {
  return Text(
    'ChittyChat',
    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
          color: color,
        ),
  );
}

TextButton smallLabelTextButton(BuildContext context,
    {double fontSize = 12, required String? text, bool isGrey = false}) {
  return TextButton(
    onPressed: () {},
    style: ButtonStyle(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      padding: WidgetStateProperty.all(EdgeInsets.zero),
    ),
    child: Text(
      text!,
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: isGrey
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.primary,
            fontSize: fontSize,
          ),
    ),
  );
}
