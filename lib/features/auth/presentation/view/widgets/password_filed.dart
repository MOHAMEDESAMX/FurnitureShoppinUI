import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custon_text_formfiled.dart';

class PasswordFiled extends StatefulWidget {
  const PasswordFiled({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  State<PasswordFiled> createState() => _PasswordFiledState();
}

class _PasswordFiledState extends State<PasswordFiled> {
  bool isNotVisibale = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFiled(
      visibale: isNotVisibale,
      text: "Password",
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
      controller: widget.passwordController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Password can't be empty";
        }
        return null;
      },
    );
  }
}
