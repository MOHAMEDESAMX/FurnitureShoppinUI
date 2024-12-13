import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_text_formfiled.dart';

class NameFiled extends StatelessWidget {
  const NameFiled({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFiled(
      text: "Name",
      controller: nameController,
      validator: (value) {
        if (value!.isEmpty) {
          return "name can't be Embty";
        }
        return null;
      },
    );
  }
}
