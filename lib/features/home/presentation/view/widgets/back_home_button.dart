import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/functions/navigations.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/main_screen_view.dart';

class BackHomeButton extends StatelessWidget {
  const BackHomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
              side: const BorderSide(
                width: 1,
                color: Colors.black,
              ),
            )),
        onPressed: () {
          navRplacement(context, const MainScreen());
        },
        child: Text(
          "BACK TO HOME",
          style:
              Styles.textstylebutton18.copyWith(color: const Color(0XFF303030)),
        ),
      ),
    );
  }
}
