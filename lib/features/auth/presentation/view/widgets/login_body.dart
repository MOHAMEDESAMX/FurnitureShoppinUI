import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/functions/navigations.dart';
import 'package:furniture_shoppin_ui/core/functions/show_toast.dart';
import 'package:furniture_shoppin_ui/core/services/auth_service.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/email_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/forgot_password_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/login_button.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/or_divider.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/password_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/sighup_row.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/home_view.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> globalKey = GlobalKey();

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
                ForgotPasswordFiled(
                  emailController: emailController,
                ),
                const Gap(40),
                LoginButton(
                  emailController: emailController,
                  globalKey: globalKey,
                  passwordController: passwordController,
                  onSuccess: () async {
                    log("login succeed");
                    final success = await authService.login(
                        context, emailController.text, passwordController.text);
                    log(success.toString());
                    if (success && context.mounted) {
                      if (authService.currentUser!.emailVerified) {
                        navRplacement(
                          context,
                          const HomeView(),
                        );
                      } else {
                        await authService.verifyEmail(context);
                        if (mounted) {
                          showToast(
                              // ignore: use_build_context_synchronously
                              context: context,
                              text: "Please verify your email");
                        } else {
                          log("Widget is no longer mounted. Toast not shown.");
                        }
                      }
                    }
                  },
                ),
                const Gap(15),
                const OrDivider(),
                const SighupRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
