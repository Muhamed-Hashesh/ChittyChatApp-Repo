import 'package:chit_chat_app/helper/back_button.dart';
import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/views/profile_page/widgets/profile_action_container.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: backIconButton(context),
        title: Text('Profile', style: Theme.of(context).textTheme.labelLarge),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            // height: 200,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/girl.png', width: 100),
                  ],
                ),
                Text(
                  'Muhamed Hashish',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  'muhamed1221@gmail.com',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                ),
                16.height,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileActionsContainer(
                      contentColor: Color(0XFF039C00),
                      icon: Ionicons.call_outline,
                      label: 'Call',
                    ),
                    ProfileActionsContainer(
                      contentColor: Color(0XFF0057FF),
                      icon: Ionicons.chatbox,
                      label: 'Chat',
                    ),
                    ProfileActionsContainer(
                      contentColor: Color(0XFFF93C00),
                      icon: Ionicons.basket,
                      label: 'Delete',
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
