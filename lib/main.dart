import 'dart:developer';
import 'package:chit_chat_app/config/get_pages_path.dart';
import 'package:chit_chat_app/config/themes.dart';
import 'package:chit_chat_app/firebase_options.dart';
import 'package:chit_chat_app/views/welcome_page/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        log('========= User is currently signed out! ===========');
      } else {
        log('========== User is signed in! ===========');
      }
    });
  }

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
