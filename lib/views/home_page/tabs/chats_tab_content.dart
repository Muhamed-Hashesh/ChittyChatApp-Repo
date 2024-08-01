import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/helper/texts.dart';
import 'package:chit_chat_app/views/home_page/widgets/chat_item_card_builder.dart';
import 'package:flutter/material.dart';

class ChatsTabContent extends StatelessWidget {
  const ChatsTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        8.height,
        const ChatCardItemListBuilder(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: buildRichText(context),
          ),
        )
      ],
    );
  }

  RichText buildRichText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Data are ',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: smallLabelTextButton(context, text: 'end-to-end encrypted'),
          ),
        ],
      ),
    );
  }
}
