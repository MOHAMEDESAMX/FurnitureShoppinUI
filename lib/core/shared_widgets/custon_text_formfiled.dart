import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    this.suffix,
    required this.text,
    required this.controller,
    this.textInputType,
    required this.validator,
    this.visibale,
  });

  final Widget? suffix;
  final String text;
  final TextEditingController controller;
  final TextInputType? textInputType;
  final String? Function(String?) validator;
  final bool? visibale;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType ?? TextInputType.text,
      controller: controller,
      validator: validator,
      obscureText: visibale ?? false,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        label: Text(
          text,
          style: Styles.textstyle14,
        ),
        suffixIcon: suffix ?? const SizedBox(),
      ),
    );
  }
}
