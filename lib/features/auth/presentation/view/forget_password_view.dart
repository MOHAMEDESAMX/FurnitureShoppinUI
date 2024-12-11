import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/services/auth_service.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_buttom.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custon_text_formfiled.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key, required this.emailController});
  final TextEditingController emailController;

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  late AuthService authService;

  final GetIt getIt = GetIt.instance;
  @override
  void initState() {
    super.initState();
    authService = getIt.get<AuthService>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(""),
          CustomTextFormFiled(
            text: "Email",
            controller: widget.emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return "email cant be empty";
              }
              return null;
            },
          ),
          const Gap(50),
          CustomButtom(
              text: "Reset",
              onPressed: () async {
                await authService.resetPassword(widget.emailController.text);
              })
        ],
      ),
    );
  }
}
