import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/confirm_password_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/email_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/name_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/password_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/signin_row.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/signup_buttom.dart';
import 'package:gap/gap.dart';

class SignupBody extends StatelessWidget {
  SignupBody({
    super.key,
  });
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "WELCOME",
                  style: Styles.textstyleauth24,
                ),
                const Gap(40),
                NameFiled(nameController: nameController),
                const Gap(20),
                EmailFiled(emailController: emailController),
                const Gap(20),
                PasswordFiled(passwordController: passwordController),
                const Gap(20),
                ConfirmPasswordFiled(
                    confirmPasswordController: confirmPasswordController,
                    passwordController: passwordController),
                const Gap(60),
                SignupButtom(
                  emailController: emailController,
                  nameController: nameController,
                  passwordController: passwordController,
                  formkey: formkey,
                  onSuccess: () {
                    //navRplacement(context, HomeView());
                  },
                ),
                const Gap(20),
                const SigninRow()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
