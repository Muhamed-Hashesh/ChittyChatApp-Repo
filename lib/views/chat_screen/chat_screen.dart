import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/views/chat_screen/widgets/bubble_and_time_item.dart';
import 'package:chit_chat_app/views/chat_screen/widgets/end_to_end_container.dart';
import 'package:chit_chat_app/widgets/input_chat_text_field.dart';
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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: const [
                ENdToEndEncryptionContainer(),
                // BubbleAndTimeItemBuilder(),
                MyBubbleAndTimeItem(
                  isComming: true,
                  text: 'Hello there, how are you today?',
                  date: '10:32 am',
                  imageUrl: null,
                ),
                MyBubbleAndTimeItem(
                  isComming: false,
                  text: 'I am good. What about you?',
                  date: '10:32 am',
                  imageUrl: null,
                ),
                MyBubbleAndTimeItem(
                  isComming: false,
                  text: 'What\'s your opinion on this image, brother?',
                  date: '10:32 am',
                  imageUrl:
                      'https://velog.velcdn.com/images/steadygo247/post/f598d9b0-4f34-4289-91dd-840ec0a4bcad/image.jpg',
                ),
                MyBubbleAndTimeItem(
                  isComming: true,
                  text: 'It\'s better',
                  date: '10:32 am',
                  imageUrl:
                      'https://thetechvate.com/wp-content/uploads/2024/03/3.png',
                ),
              ],
            ),
          ),
          const InputChatTextField(),
        ],
      ),
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
