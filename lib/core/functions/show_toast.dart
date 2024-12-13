import 'dart:developer';

import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';

void showToast({
  required context,
  required String text,
  IconData icon = Icons.info,
  Color color = Colors.grey,
}) {
  try {
    DelightToastBar(
        snackbarDuration: const Duration(seconds: 3),
        animationDuration: const Duration(seconds: 1),
        autoDismiss: true,
        position: DelightSnackbarPosition.bottom,
        builder: (context) {
          return ToastCard(
            title: Text(
              text,
              style: Styles.textstyletoast14,
            ),
            color: color,
            leading: Icon(
              icon,
              size: 25,
              color: Colors.black,
            ),
          );
        }).show(context);
  } catch (e) {
    log(e.toString());
  }
}
