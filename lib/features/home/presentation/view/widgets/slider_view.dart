import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_images.dart';
import 'package:furniture_shoppin_ui/core/functions/navigations.dart';
import 'package:furniture_shoppin_ui/core/functions/show_toast.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/login_view.dart';
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
          Gap(80.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 35.r,
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
                  Gap(10.h),
                  Text("mohamedessam.5530@gmail.com",
                      style: Styles.textstyle12),
                ],
              )
            ],
          ),
          Gap(20.h),
          SliderListTile(
            onTap: () {},
            title: "My orders",
            subtitle: "Already have 10 orders",
          ),
          Gap(10.h),
          SliderListTile(
            onTap: () {},
            title: "Shipping Addresses",
            subtitle: "03 Addresses",
          ),
          Gap(10.h),
          SliderListTile(
            onTap: () {},
            title: "Payment Method",
            subtitle: "You have 2 cards",
          ),
          Gap(10.h),
          SliderListTile(
            onTap: () {},
            title: "My reviews",
            subtitle: "Reviews for 5 items",
          ),
          Gap(10.h),
          SliderListTile(
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              if (context.mounted) {
                showToast(
                  context: context,
                  text: "Successfully Logged Out",
                  color: Colors.green,
                  icon: Icons.check,
                );
                navRplacement(context, const LoginView());
              } else {
                showToast(
                  // ignore: use_build_context_synchronously
                  context: context,
                  text: "Failed to Logged Out",
                  color: Colors.red,
                  icon: Icons.error,
                );
              }
            },
            title: "Setting",
            subtitle: "Notification, Password, FAQ, Contact",
          ),
          Gap(10.h),
        ],
      ),
    );
  }
}
