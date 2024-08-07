import 'package:chit_chat_app/views/authentication/widgets/edit_profile_container_content.dart';
import 'package:chit_chat_app/views/profile_page/widgets/profile_app_bar.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          profileAppBar(context, title: 'Edit your profile', hasAction: false),
      body: Container(
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const EditProfileContainerContent(),
      ),
    );
  }
}
