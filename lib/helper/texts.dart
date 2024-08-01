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
    'SAMPARK',
    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
          color: color,
        ),
  );
}
