import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';

class LoginController extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();

  final credential = FirebaseAuth.instance;

  Future<void> loginMethod(
      {required String email, required String password}) async {
    try {
      await credential.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      }
    }
  }
}
