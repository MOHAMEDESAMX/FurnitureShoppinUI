import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custon_text_formfiled.dart';

class EmailFiled extends StatelessWidget {
  const EmailFiled({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFiled(
      controller: emailController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Email Can't be Empty";
        }
        return null;
      },
      text: "Email",
    );
  }
}
