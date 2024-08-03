import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/helper/texts.dart';
import 'package:chit_chat_app/views/chat_screen/widgets/bubble_and_time_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class ChatScreenPage extends StatelessWidget {
  const ChatScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: buildAppBar(context),
      body: const BubbleAndTimeItemBuilder(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      toolbarHeight: 75,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Ionicons.chevron_back_outline,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          size: 35,
        ),
      ),
      title: Row(
        children: [
          Image.asset('assets/images/girl.png', width: 40),
          8.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chit Chat', style: Theme.of(context).textTheme.labelLarge),
              Text('Online', style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Ionicons.call_outline,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Ionicons.videocam_outline,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ],
    );
  }
}
