import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/funcations/naviagtions.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/signup_view.dart';

class SignupRow extends StatelessWidget {
  const SignupRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 120,
        height: 50,
        child: TextButton(
          onPressed: () {
            navRplacement(context, const SignupView());
          },
          child: Text(
            "SIGN UP",
            style: Styles.textstylebuttom18.copyWith(
              color: const Color(0xff303030),
            ),
          ),
        ),
      ),
    );
  }
}
