import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:flutter/material.dart';

class BubbleAndTimeItem extends StatelessWidget {
  const BubbleAndTimeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7, minWidth: 100),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: Text('Hello there, how are you today?')),
            ],
          ),
        ),
        Text(
          '10:32 am',
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 13,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
        16.height,
      ],
    );
  }
}
