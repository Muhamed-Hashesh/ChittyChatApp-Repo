import 'package:chit_chat_app/helper/back_button.dart';
import 'package:chit_chat_app/helper/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar profileAppBar(BuildContext context,
    {required String title, bool hasAction = true}) {
  return AppBar(
    backgroundColor: Theme.of(context).colorScheme.surface,
    leading: backIconButton(context),
    title: Text(title, style: Theme.of(context).textTheme.labelLarge),
    actions: hasAction
        ? [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: smallLabelTextButton(context,
                  text: 'Edit',
                  fontSize: 16,
                  onTap: () => Get.toNamed('/editProfile')),
            ),
          ]
        : null,
    centerTitle: false,
  );
}
