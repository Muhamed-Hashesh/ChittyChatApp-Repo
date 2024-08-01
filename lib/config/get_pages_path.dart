import 'package:chit_chat_app/views/authentication/auth_page_home.dart';
import 'package:chit_chat_app/views/home_page/home_page.dart';
import 'package:get/get.dart';

var getPagesPath = [
  GetPage(
    name: '/authPage',
    page: () => const AuthPageHome(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(seconds: 1),
  ),
  GetPage(
    name: '/homePage',
    page: () => const HomePage(),
    transition: Transition.leftToRightWithFade,
  ),
];
