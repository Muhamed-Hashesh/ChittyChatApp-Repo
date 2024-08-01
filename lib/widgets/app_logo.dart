import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/helper/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.hasTitle = true,
  });
  final bool hasTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/logo.svg',
            ),
          ],
        ),
        8.height,
        hasTitle
            ? largeText(context, color: Theme.of(context).colorScheme.secondary)
            : Container(),
      ],
    );
  }
}
