import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/funcations/naviagtions.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/forget_password_view.dart';

class ForgotPasswordFiled extends StatelessWidget {
  const ForgotPasswordFiled({
    super.key,
    required this.emailController,
  });
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => navpush(
        context,
        ForgetPasswordView(
          emailController: emailController,
        ),
      ),
      child: Text(
        "Forgot Password",
        style: Styles.textstylebuttom18.copyWith(
          color: const Color(0xff303030),
        ),
      ),
    );
  }
}
