import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/funcations/naviagtions.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  User? currentUser;

  User? get user {
    return currentUser;
  }

  Future<bool> login(String email, String password) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      if (credential.user != null) {
        currentUser = credential.user;
        return true;
      }
    } catch (e) {
      log(e.toString());
    }
    return false;
  }

  Future<void> signup(String email, String password) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (credential.user != null) {}
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        log("email-already-in-use");
      } else if (e.code == "invalid-email") {
        log("invalid-email");
      } else if (e.code == "weak-password") {
        log("weak-password");
      } else if (e.code == "network-request-failed") {
        log("network-request-failed");
      } else if (e.code == "too-many-requests") {
        log("too-many-requests");
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> verifyEmail(context) async {
    try {
      await firebaseAuth.currentUser!.sendEmailVerification();
      mySnakeBar(context, "success we send Verification link to your email",
          Colors.green);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        log("auth/invalid-email");
      } else if (e.code == "user-not-found") {
        log("user-not-found");
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
