import 'package:chit_chat_app/views/authentication/auth_page_home.dart';
import 'package:chit_chat_app/views/chat_screen/chat_screen.dart';
import 'package:chit_chat_app/views/home_page/home_page.dart';
import 'package:chit_chat_app/views/profile_page/edit_profile_page.dart';
import 'package:chit_chat_app/views/profile_page/profile_page.dart';
import 'package:chit_chat_app/views/welcome_page/welcome_page.dart';
import 'package:get/get.dart';

var getPagesPath = [
  GetPage(
    name: '/welcomePage',
    page: () => const WelcomePage(),
    transitionDuration: const Duration(seconds: 1),
  ),
  GetPage(
    name: '/authPage',
    page: () => const AuthPageHome(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(seconds: 1),
  ),
  GetPage(
    name: '/homePage',
    page: () => const HomePage(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: '/chatScreen',
    page: () => const ChatScreenPage(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: '/profilePage',
    page: () => const ProfilePage(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: '/editProfile',
    page: () => const EditProfilePage(),
    transition: Transition.zoom,
  ),
];
