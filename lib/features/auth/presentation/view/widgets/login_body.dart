import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/email_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/forgot_password_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/login_buttom.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/or_divider.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/password_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/signup_row.dart';
import 'package:gap/gap.dart';

class LoginBody extends StatelessWidget {
  LoginBody({
    super.key,
  });

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello !",
                  style: Styles.textstyleauth30,
                ),
                const Gap(10),
                Text(
                  "WELCOME BACK",
                  style: Styles.textstyleauth24,
                ),
                const Gap(40),
                EmailFiled(emailController: emailController),
                const Gap(30),
                PasswordFiled(passwordController: passwordController),
                const Gap(20),
                const ForgotPasswordFiled(),
                const Gap(40),
                LoginButtom(
                  emailController: emailController,
                  globalKey: globalKey,
                  passwordController: passwordController,
                  onSuccess: () {},
                ),
                const Gap(15),
                const OrDivider(),
                const SignupRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
