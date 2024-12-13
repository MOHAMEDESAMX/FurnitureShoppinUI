import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/functions/navigations.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/sighup_view.dart';

class SighupRow extends StatelessWidget {
  const SighupRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 120,
        height: 50,
        child: TextButton(
          onPressed: () {
            navRplacement(context, const SighupView());
          },
          child: Text(
            "SIGN UP",
            style: Styles.textstylebutton18.copyWith(
              color: const Color(0xff303030),
            ),
          ),
        ),
      ),
    );
  }
}
