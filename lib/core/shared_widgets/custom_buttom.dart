import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key, required this.text, this.onPressed, this.textStyle});
  final String text;
  final void Function()? onPressed;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle ?? Styles.textstylebuttom18,
      ),
    );
  }
}
