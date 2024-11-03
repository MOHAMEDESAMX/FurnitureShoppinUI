import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_images.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:gap/gap.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.r),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 35.w,
              height: 30.h,
              child: SvgPicture.asset(
                AssetsImages.mastercard,
              ),
            ),
            Gap(20.w),
            Text("**** **** **** 3947", style: Styles.textstylelist14),
          ],
        ),
      ),
    );
  }
}
