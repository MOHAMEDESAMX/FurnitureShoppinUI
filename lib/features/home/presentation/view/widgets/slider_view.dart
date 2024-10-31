import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_images.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/slider_list_tile.dart';
import 'package:gap/gap.dart';

class SliderView extends StatelessWidget {
  const SliderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30, left: 5),
      child: Column(
        children: [
          Gap(100.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40.r,
                backgroundImage: const AssetImage(AssetsImages.me),
              ),
              Gap(10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mohamed Essam",
                    style: Styles.textstyle16,
                  ),
                  Gap(20.h),
                  Text("mohamedessam.5530@gmail.com",
                      style: Styles.textstyle12),
                ],
              )
            ],
          ),
          Gap(40.h),
          SliderListTile(
            onTap: () {},
            title: "My orders",
            subtitle: "Already have 10 orders",
          ),
          Gap(20.h),
          SliderListTile(
            onTap: () {},
            title: "Shipping Addresses",
            subtitle: "03 Addresses",
          ),
          Gap(20.h),
          SliderListTile(
            onTap: () {},
            title: "Payment Method",
            subtitle: "You have 2 cards",
          ),
          Gap(20.h),
          SliderListTile(
            onTap: () {},
            title: "My reviews",
            subtitle: "Reviews for 5 items",
          ),
          Gap(20.h),
          SliderListTile(
            onTap: () {},
            title: "Setting",
            subtitle: "Notification, Password, FAQ, Contact",
          ),
          Gap(20.h),
        ],
      ),
    );
  }
}
