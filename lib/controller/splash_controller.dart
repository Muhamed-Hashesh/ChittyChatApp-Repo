import 'package:get/get.dart';

class SplashController extends GetxController {
  void handleSplash() {
    Future.delayed(const Duration(seconds: 1))
        .then((value) => Get.offAllNamed('/homePage'));
  }
}
