import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_images.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/price_row.dart';
import 'package:gap/gap.dart';

class DeliveryMethod extends StatelessWidget {
  const DeliveryMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: 20.h,
                width: 90.w,
                child: SvgPicture.asset(
                  AssetsImages.dhl,
                ),
              ),
              Gap(10.w),
              Text(
                "Fast (2-3 days)",
                style: Styles.textstylecard14
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            ]),
            Gap(40.h),
            const PricesRow(text: "Order:", price: "\$ 95.00"),
            Gap(5.h),
            const PricesRow(text: "Delivery:", price: "\$ 5.00"),
            Gap(5.h),
            const PricesRow(text: "Order:", price: "\$ 100.00"),
            Gap(5.h),
          ],
        ),
      ),
    );
  }
}
