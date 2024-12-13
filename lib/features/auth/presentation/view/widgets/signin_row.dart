import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/functions/navigations.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/login_view.dart';

class SigninRow extends StatelessWidget {
  const SigninRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have account?",
          style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        TextButton(
            onPressed: () {
              navRplacement(context, const LoginView());
            },
            child: Text(
              "SIGN IN",
              style: Styles.textstyle14
                  .copyWith(fontWeight: FontWeight.w900, color: Colors.black),
            ))
      ],
    );
  }
}
