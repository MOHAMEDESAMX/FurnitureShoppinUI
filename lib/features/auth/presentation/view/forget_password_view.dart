import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/functions/show_toast.dart';
import 'package:furniture_shoppin_ui/core/services/auth_service.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_button.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_text_formfiled.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
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
            SizedBox(
              width: 140.w,
              height: 55.h,
              child: CustomButton(
                  text: "Reset",
                  onPressed: () async {
                    final success = await authService.resetPassword(
                        context, widget.emailController.text);
                    if (success && context.mounted) {
                      showToast(
                          context: context,
                          text: "reset password email sent",
                          icon: Icons.check,
                          color: Colors.green);
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
