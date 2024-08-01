import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/views/authentication/widgets/auth_body_container.dart';
import 'package:chit_chat_app/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPageHome extends StatelessWidget {
  const AuthPageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                32.height,
                const AppLogo(
                  hasTitle: true,
                ),
                60.height,
                const AuthBodyContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
