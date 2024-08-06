import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/views/profile_page/widgets/profile_action_container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfileHeaderContainer extends StatelessWidget {
  const ProfileHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/girl.png', width: 120),
            ],
          ),
          16.height,
          Text(
            'Muhamed Hashish',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            FirebaseAuth.instance.currentUser!.email!,
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
                icon: Ionicons.chatbubble,
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
    );
  }
}
