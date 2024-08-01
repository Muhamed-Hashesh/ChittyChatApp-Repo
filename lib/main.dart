import 'package:chit_chat_app/config/get_pages_path.dart';
import 'package:chit_chat_app/config/themes.dart';
import 'package:chit_chat_app/views/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChitChatty',
      theme: darkTheme,
      // darkTheme: darkTheme,
      // themeMode: ThemeMode.dark,
      getPages: getPagesPath,
      home: const WelcomePage(),
    );
  }
}
