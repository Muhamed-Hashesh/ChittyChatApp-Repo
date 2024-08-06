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
    {double fontSize = 12,
    required String? text,
    bool isGrey = false,
    Function()? onTap}) {
  return TextButton(
    onPressed: onTap,
    // style: ButtonStyle(
    //   tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //   overlayColor: WidgetStateProperty.all(Colors.transparent),
    //   padding: WidgetStateProperty.all(EdgeInsets.zero),
    // ),
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
      minimumSize: const Size(0, 0),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
