import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/functions/show_toast.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.emailController,
    required this.globalKey,
    required this.passwordController,
    required this.onSuccess,
  });
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> globalKey;
  final VoidCallback onSuccess;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 280,
        child: CustomButton(
          onPressed: () {
            if (globalKey.currentState!.validate()) {
              log(globalKey.currentState!.validate().toString());
              if (!emailController.text.contains("@")) {
                showToast(context: context, text: "email should contain @");
                log('email not valid contain @');
                //tosto
              } else if (passwordController.text.length < 4) {
                showToast(context: context, text: "password should be at lest 4 characters");
                log('pass not valid length');
                //tosto
              } else {
                log("onsuccess");
                onSuccess();
              }
            }
          },
          text: "Log in",
        ),
      ),
    );
  }
}
