import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_icons.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/back_home_button.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/track_button.dart';
import 'package:gap/gap.dart';

class SuccessOrderView extends StatelessWidget {
  const SuccessOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.r),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Success !",
              style: Styles.textstyle38,
            ),
            Gap(20.h),
            SizedBox(
              width: 200.w,
              height: 180.h,
              child: SvgPicture.asset(AssetsIcons.group),
            ),
            SizedBox(
              width: 50.w,
              height: 50.h,
              child: SvgPicture.asset(AssetsIcons.checkmark),
            ),
            Gap(20.h),
            Text(
              "Your order will be delivered soon. \n Thank you for choosing our app!",
              style: Styles.textstylecheckout18,
            ),
            Gap(20.h),
            const TrackOrderButton(),
            const BackHomeButton(),
          ]),
        ),
      ),
    );
  }
}
