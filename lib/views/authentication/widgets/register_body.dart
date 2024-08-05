import 'package:chit_chat_app/controller/auth_controller/register_controller.dart';
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
    RegisterController registerController = Get.put(RegisterController());
    return Column(
      children: [
        40.height,
        const CustomTextField(
          icon: EneftyIcons.personalcard_bold,
          hintText: 'Full Name',
        ),
        16.height,
        CustomTextField(
          controller: registerController.email,
          icon: EneftyIcons.paperclip_outline,
          hintText: 'Email',
        ),
        16.height,
        CustomTextField(
          controller: registerController.password,
          icon: EneftyIcons.lock_2_bold,
          hintText: 'Password',
          isPassword: true,
        ),
        60.height,
        Obx(
          () => registerController.isLoading.value
              ? const CircularProgressIndicator()
              : CustomBlueButton(
                  label: 'Register',
                  onPressed: () {
                    registerController.registerMethod(
                        email: registerController.email.text,
                        password: registerController.password.text);
                    // Get.offAllNamed('/homePage');
                  }),
        ),
        4.height,
      ],
    );
  }
}
