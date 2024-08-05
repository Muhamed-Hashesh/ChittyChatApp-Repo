import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';

class RegisterController extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();
  RxBool isLoading = false.obs;
  final credential = FirebaseAuth.instance;

  Future<void> registerMethod(
      {required String email, required String password}) async {
    isLoading.value = true;
    try {
      await credential.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log(e.toString());
    }
    isLoading.value = false;
  }
}
