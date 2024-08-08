import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/views/profile_page/widgets/edit_profile_image.dart';
import 'package:chit_chat_app/widgets/custom_blue_button.dart';
import 'package:chit_chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class EditProfileContainerContent extends StatelessWidget {
  const EditProfileContainerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const EditProfileImage(),
        16.height,
        const CustomTextField(
          hintText: 'Name',
          icon: Ionicons.person_outline,
        ),
        8.height,
        const CustomTextField(
          hintText: 'Email',
          icon: Ionicons.mail,
        ),
        8.height,
        const CustomTextField(
          hintText: 'Old Password',
          icon: Ionicons.lock_closed_outline,
          isPassword: true,
        ),
        8.height,
        const CustomTextField(
          hintText: 'New Password',
          icon: Ionicons.lock_closed_outline,
          isPassword: true,
        ),
        24.height,
        CustomBlueButton(
          label: 'Save',
          onPressed: () {},
          prefixIcon: 'assets/icons/save.svg',
        ),
        // 16.height,
      ],
    );
  }
}
