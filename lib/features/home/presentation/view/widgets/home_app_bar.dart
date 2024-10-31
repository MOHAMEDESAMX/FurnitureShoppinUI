import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:furniture_shoppin_ui/core/funcations/naviagtions.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/my_cart_view.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    required this.sliderDrawerKey,
  });

  final GlobalKey<SliderDrawerState> sliderDrawerKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      toolbarHeight: 50.h,
      leading: IconButton(
        onPressed: () {
          if (sliderDrawerKey.currentState?.isDrawerOpen ?? false) {
            sliderDrawerKey.currentState?.closeSlider();
          } else {
            sliderDrawerKey.currentState?.openSlider();
            Timer(const Duration(seconds: 30), () {
              sliderDrawerKey.currentState?.closeSlider();
            });
          }
        },
        icon: Icon(
          Icons.menu_rounded,
          color: Colors.grey,
          size: 20.r,
        ),
      ),
      centerTitle: true,
      title: SizedBox(
        height: 115.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Make home",
              style: Styles.textstyle18.copyWith(color: Colors.grey),
            ),
            Text("BEAUTIFUL", style: Styles.textstyle18),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            navpewScreen(context, const MyCartView());
          },
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.grey,
            size: 22.r,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
