import 'package:chit_chat_app/views/chat_screen/widgets/bubble_and_time_item.dart';
import 'package:flutter/material.dart';

class BubbleAndTimeItemBuilder extends StatelessWidget {
  const BubbleAndTimeItemBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 10,
      itemBuilder: (context, index) {
        // return const MyBubbleAndTimeItem();
        return Container();
      },
    );
  }
}
