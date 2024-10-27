import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';

class ForgotPasswordFiled extends StatelessWidget {
  const ForgotPasswordFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Forgot Password",
        style: Styles.textstylebuttom18.copyWith(
          color: const Color(0xff303030),
        ),
      ),
    );
  }
}
