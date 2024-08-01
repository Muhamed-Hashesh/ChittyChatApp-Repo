import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/helper/texts.dart';
import 'package:chit_chat_app/widgets/custom_text_field.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        40.height,
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
        const CustomBlueButton(),
        4.height,
        smallLabelTextButton(context, text: 'Forgot Password?', fontSize: 14),
      ],
    );
  }
}

class CustomBlueButton extends StatelessWidget {
  const CustomBlueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(189, 50),
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/connect.svg'),
          8.width,
          const Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
