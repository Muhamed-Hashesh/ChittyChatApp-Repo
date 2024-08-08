import 'package:chit_chat_app/controller/auth_controller/login_controller.dart';
import 'package:chit_chat_app/views/profile_page/widgets/header_container.dart';
import 'package:chit_chat_app/views/profile_page/widgets/profile_app_bar.dart';
import 'package:chit_chat_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController logout = Get.put(LoginController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: profileAppBar(context, title: 'Profile'),
      body: Column(
        children: [
          const ProfileHeaderContainer(),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              title: 'Logout',
              color: Theme.of(context).colorScheme.error,
              textColor: Theme.of(context).colorScheme.onError,
              onTap: () {
                logout.logoutMethod();
              },
            ),
          ),
        ],
      ),
    );
  }
}
