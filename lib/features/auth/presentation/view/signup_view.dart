import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/signup_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupBody(),
    );
  }
}
