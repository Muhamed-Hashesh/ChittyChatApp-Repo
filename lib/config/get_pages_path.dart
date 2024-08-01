import 'package:chit_chat_app/views/authentication/auth_page_home.dart';
import 'package:get/get.dart';

var getPagesPath = [
  GetPage(
    name: '/authPage',
    page: () => const AuthPageHome(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(seconds: 1),
  ),
];
