import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/views/profile_page/widgets/edit_profile_image.dart';
import 'package:chit_chat_app/views/profile_page/widgets/profile_app_bar.dart';
import 'package:chit_chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            EditProfileImage(),
            16.height,
            CustomTextField(
              hintText: 'Name',
              icon: Ionicons.person_outline,
            ),
            8.height,
            CustomTextField(
              hintText: 'Name',
              icon: Ionicons.person_outline,
            ),
            8.height,
            CustomTextField(
              hintText: 'Name',
              icon: Ionicons.person_outline,
            ),
          ],
        ),
      ),
    );
  }
}
