import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/helper/texts.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ENdToEndEncryptionContainer extends StatelessWidget {
  const ENdToEndEncryptionContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        height: 32,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 42),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Ionicons.shield_checkmark,
              color: Theme.of(context).colorScheme.primary,
              size: 16,
            ),
            8.width,
            smallLabelTextButton(context, text: 'chat end-to-end encrypted')
          ],
        ),
      ),
    );
  }
}
