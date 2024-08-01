import 'package:chit_chat_app/views/home_page/widgets/chat_item_card.dart';
import 'package:flutter/material.dart';

class ChatCardItemListBuilder extends StatelessWidget {
  const ChatCardItemListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => const ChatCardItem(),
    );
  }
}
