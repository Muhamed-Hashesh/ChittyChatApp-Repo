import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/widgets/custom_blue_button.dart';
import 'package:chit_chat_app/widgets/custom_text_field.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        40.height,
        const CustomTextField(
          icon: EneftyIcons.personalcard_bold,
          hintText: 'Full Name',
        ),
        16.height,
        const CustomTextField(
          icon: EneftyIcons.paperclip_outline,
          hintText: 'Email',
        ),
        16.height,
        const CustomTextField(
          icon: EneftyIcons.lock_2_bold,
          hintText: 'Password',
          isPassword: true,
        ),
        60.height,
        CustomBlueButton(
            label: 'Register', onPressed: () => Get.offAllNamed('/homePage')),
        4.height,
      ],
    );
  }
}
