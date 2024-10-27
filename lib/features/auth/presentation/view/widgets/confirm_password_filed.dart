import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custon_text_formfiled.dart';

class ConfirmPasswordFiled extends StatefulWidget {
  const ConfirmPasswordFiled({
    super.key,
    required this.confirmPasswordController,
    required this.passwordController,
  });

  final TextEditingController confirmPasswordController;
  final TextEditingController passwordController;

  @override
  State<ConfirmPasswordFiled> createState() => _ConfirmPasswordFiledState();
}

class _ConfirmPasswordFiledState extends State<ConfirmPasswordFiled> {
  bool isNotVisibale = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormFiled(
      visibale: isNotVisibale,
      text: "Confirm Password",
      suffix: (isNotVisibale)
          ? IconButton(
              icon: const Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  isNotVisibale = !isNotVisibale;
                });
              },
            )
          : IconButton(
              icon: const Icon(Icons.visibility_off),
              onPressed: () {
                setState(() {
                  isNotVisibale = !isNotVisibale;
                });
              },
            ),
      validator: (value) {
        if (widget.confirmPasswordController != widget.passwordController) {
          return "password not match";
        }
        return null;
      },
      controller: widget.confirmPasswordController,
    );
  }
}
