import 'package:chit_chat_app/views/profile_page/widgets/header_container.dart';
import 'package:chit_chat_app/views/profile_page/widgets/profile_app_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: profileAppBar(context, title: 'Profile'),
      body: const Column(
        children: [ProfileHeaderContainer()],
      ),
    );
  }
}
