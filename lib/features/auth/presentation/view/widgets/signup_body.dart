import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/funcations/naviagtions.dart';
import 'package:furniture_shoppin_ui/core/services/auth_service.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/login_view.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/confirm_password_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/email_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/name_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/password_filed.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/signin_row.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/widgets/signup_buttom.dart';
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
                SignupButtom(
                  emailController: emailController,
                  nameController: nameController,
                  passwordController: passwordController,
                  formkey: formkey,
                  onSuccess: () async {
                    await authService.signup(
                        emailController.text, passwordController.text);
                    if (context.mounted) {
                      authService.verifyEmail(context);
                      navRplacement(
                        context,
                        const LoginView(),
                      );
                    }
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
