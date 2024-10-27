import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_buttom.dart';

class SignupButtom extends StatelessWidget {
  const SignupButtom({
    super.key,
    required this.formkey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.onSuccess,
  });

  final GlobalKey<FormState> formkey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function() onSuccess;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 285,
        height: 50,
        child: CustomButtom(
          text: "SIGN UP",
          onPressed: () {
            if (formkey.currentState!.validate()) {
              if (nameController.text.length < 5) {
                //tosto
              } else if (!emailController.text.contains("@")) {
                //tosto
              } else if (passwordController.text.length < 8) {
                //tosto
              } else {
                onSuccess;
              }
            }
          },
        ),
      ),
    );
  }
}
