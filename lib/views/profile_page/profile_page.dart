import 'package:chit_chat_app/helper/back_button.dart';
import 'package:chit_chat_app/helper/texts.dart';
import 'package:chit_chat_app/views/profile_page/widgets/header_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: backIconButton(context),
        title: Text('Profile', style: Theme.of(context).textTheme.labelLarge),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: smallLabelTextButton(context,
                text: 'Edit',
                fontSize: 16,
                onTap: () => Get.toNamed('/editProfile')),
          ),
        ],
        centerTitle: false,
      ),
      body: const Column(
        children: [ProfileHeaderContainer()],
      ),
    );
  }
}
