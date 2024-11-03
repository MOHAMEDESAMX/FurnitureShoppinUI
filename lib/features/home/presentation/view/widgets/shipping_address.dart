import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:gap/gap.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 125.h,
      padding: EdgeInsets.all(20.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quesna",
            style: Styles.textstyleproduct18,
          ),
          Gap(10.h),
          Text(
            "18 Mostafa Kamel St, Quesna, Monofia, Egypt",
            style: Styles.textstyle14.copyWith(
              color: const Color(0xff808080),
            ),
          ),
        ],
      ),
    );
  }
}
