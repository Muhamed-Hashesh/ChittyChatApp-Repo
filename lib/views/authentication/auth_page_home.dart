import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/views/authentication/widgets/auth_body_container.dart';
import 'package:chit_chat_app/widgets/app_logo.dart';
import 'package:chit_chat_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AuthPageHome extends StatelessWidget {
  const AuthPageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                48.height,
                const AppLogo(
                  hasTitle: true,
                ),
                40.height,
                const AuthBodyContainer(),
                32.height,
                CustomButton(
                  title: 'Google',
                  logoSvgAsset: 'assets/icons/google.svg',
                  color: Theme.of(context).colorScheme.primaryContainer,
                  onTap: () {},
                  isAuthenticationMethod: true,
                ),
                16.height,
                CustomButton(
                  title: 'Facebook',
                  logoSvgAsset: 'assets/icons/facebook.svg',
                  color: Theme.of(context).colorScheme.primaryContainer,
                  onTap: () {},
                  isAuthenticationMethod: true,
                ),
                16.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
