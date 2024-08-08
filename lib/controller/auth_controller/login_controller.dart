import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';

class LoginController extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();
  RxBool isLoading = false.obs;

  final credential = FirebaseAuth.instance;

  Future<void> loginMethod(
      {required String email, required String password}) async {
    isLoading.value = true;
    try {
      await credential.signInWithEmailAndPassword(
          email: email, password: password);
      Get.offAllNamed('/homePage');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      }
    }
    isLoading.value = false;
  }

  Future<void> logoutMethod() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed('/welcomePage');
  }
}
