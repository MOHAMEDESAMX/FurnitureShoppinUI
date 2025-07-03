import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/functions/navigations.dart';
import 'package:furniture_shoppin_ui/core/functions/show_toast.dart';
import 'package:furniture_shoppin_ui/core/services/auth_service.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/login_view.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/confirm_password_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/email_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/name_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/password_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/signin_row.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/sighup_button.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({
    super.key,
  });

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey();
  bool isLoading = false;
  final GetIt getIt = GetIt.instance;
  late AuthService authService;
  @override
  void initState() {
    super.initState();
    authService = getIt.get<AuthService>();
  }

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
                isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SighupButton(
                        emailController: emailController,
                        nameController: nameController,
                        passwordController: passwordController,
                        formkey: formkey,
                        onSuccess: () async {
                          setState(() {
                            isLoading = true;
                          });
                          log(formkey.currentState!.validate().toString());
                          await authService
                              .signup(
                            context,
                            emailController.text,
                            passwordController.text,
                          )
                              .then((success) {
                            if (success && context.mounted) {
                              setState(() {
                                isLoading = false;
                              });
                              authService.verifyEmail(context);
                              showToast(
                                  context: context,
                                  text:
                                      "success we send Verification link to your email",
                                  color: Colors.green,
                                  icon: Icons.check);
                              navRplacement(
                                context,
                                const LoginView(),
                              );
                            }
                          }).catchError((error) {
                            setState(() {
                              isLoading = false;
                            });
                            showToast(
                                context: mounted ? context : null,
                                text:
                                    "unknown Error during sign-up, try again later",
                                color: Colors.red,
                                icon: Icons.error);
                            log('Error during sign-up: $error');
                          });
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
