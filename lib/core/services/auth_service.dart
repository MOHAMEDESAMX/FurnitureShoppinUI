import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/functions/show_toast.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  User? currentUser;

  User? get user {
    return currentUser;
  }

  AuthService() {
    firebaseAuth.authStateChanges().listen(authStateChanges);
  }

  Future<bool> login(context, String email, String password) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      if (credential.user != null) {
        currentUser = credential.user;
        return true;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        showToast(context: context, text: "invalid email", icon: Icons.error);
        log("auth/invalid-email");
      } else if (e.code == "user-not-found") {
        showToast(context: context, text: "user not found", icon: Icons.error);
        log("auth/user-not-found");
      } else if (e.code == "wrong-password") {
        showToast(context: context, text: "wrong password", icon: Icons.error);
        log("auth/wrong-password");
      } else if (e.code == "network-request-failed") {
        showToast(
            context: context,
            text: "network request failed, try agin later",
            icon: Icons.error);
        log("auth/network-request-failed");
        return false;
      } else if (e.code == "too-many-requests") {
        showToast(
            context: context,
            text: "too many requests, try agin later",
            icon: Icons.error);
        log("auth/too-many-requests");
        return false;
      }
    } catch (e) {
      showToast(context: context, text: "unknown error");
      log(e.toString());
      return false;
    }
    return false;
  }

  Future<bool> sighup(context, String email, String password) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (credential.user != null) {
        currentUser = credential.user;
        return true;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        showToast(
          context: context,
          text: "email already in use",
          icon: Icons.error,
        );
        log("email-already-in-use");
      } else if (e.code == "invalid-email") {
        showToast(
          context: context,
          text: "invalid email",
          icon: Icons.error,
        );
        log("invalid-email");
      } else if (e.code == "weak-password") {
        showToast(
          context: context,
          text: "weak password",
          icon: Icons.error,
        );
        log("weak-password");
      } else if (e.code == "network-request-failed") {
        showToast(
          context: context,
          text: "network request failed, try agin later",
          icon: Icons.error,
        );
        log("network-request-failed");
      } else if (e.code == "too-many-requests") {
        showToast(
          context: context,
          text: "too many requests, try agin later",
          icon: Icons.error,
        );
        log("too-many-requests");
      }
    } catch (e) {
      log(e.toString());
    }
    return false;
  }

  Future<void> verifyEmail(context) async {
    try {
      await currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        showToast(context: context, text: "invalid email");
        log("auth/invalid-email");
      } else if (e.code == "user-not-found") {
        showToast(context: context, text: "user not found");
        log("auth/user-not-found");
      }
    } catch (e) {
      showToast(context: context, text: "unknown error");
      log(e.toString());
    }
  }

  Future<bool> resetPassword(context, String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        showToast(
            context: context,
            text: "Invalid email",
            icon: Icons.error,
            color: Colors.red);
        log("auth/invalid-email");
      } else if (e.code == "user-not-found") {
        showToast(
            context: context,
            text: "user not found",
            icon: Icons.error,
            color: Colors.red);
        log("user-not-found");
      } else if (e.code == "network-request-failed") {
        showToast(
            context: context,
            text: "network request failed, try agin later",
            icon: Icons.error,
            color: Colors.red);
        log("network-request-failed");
      } else if (e.code == "too-many-requests") {
        showToast(
            context: context,
            text: "too many requests, try agin later",
            icon: Icons.error,
            color: Colors.red);
        log("too-many-requests");
      }
    } catch (e) {
      showToast(context: context, text: "unknown error");
      log(e.toString());
    }
    return false;
  }

  void authStateChanges(User? user) {
    if (user != null) {
      currentUser = user;
    } else {
      currentUser = null;
    }
  }
}
