import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class InputChatTextField extends StatelessWidget {
  const InputChatTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      alignment: Alignment.center,
      height: 55,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.mic),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type a message..',
                hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.camera),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.send),
          ),
        ],
      ),
    );
  }
}
