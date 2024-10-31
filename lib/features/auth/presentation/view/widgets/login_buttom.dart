import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_buttom.dart';

class LoginButtom extends StatelessWidget {
  const LoginButtom({
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
        child: CustomButtom(
          onPressed: () {
            if (globalKey.currentState!.validate()) {
              if (!emailController.text.contains("@")) {
              
                //tosto
              } else if (passwordController.text.length < 8) {
                //tosto
              }
            } else {
              onSuccess;
            }
          },
          text: "Log in",
        ),
      ),
    );
  }
}
