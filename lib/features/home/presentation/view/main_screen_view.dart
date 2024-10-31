import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_icons.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/home_view.dart';
import 'package:furniture_shoppin_ui/features/notifications/presentation/view/notifications_view.dart';
import 'package:furniture_shoppin_ui/features/profile/presentation/view/profile_view.dart';
import 'package:furniture_shoppin_ui/features/saved/presentation/view/saved_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;
    controller = PersistentTabController(initialIndex: 0);

    List<Widget> buildScreens() {
      return [
        const HomeView(),
        const SavedView(),
        const NotificationsView(),
        const ProfileView(),
      ];
    }

    Widget svgIcons(String assetPath, {required bool isActive}) {
      return SvgPicture.asset(
        assetPath,
        width: 18.w,
        height: 18.h,
        colorFilter: ColorFilter.mode(
          isActive ? Colors.black : Colors.grey,
          BlendMode.srcIn,
        ),
      );
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: svgIcons(AssetsIcons.home, isActive: true),
          inactiveIcon: svgIcons(AssetsIcons.home, isActive: false),
          title: "",
        ),
        PersistentBottomNavBarItem(
          icon: svgIcons(AssetsIcons.market, isActive: true),
          inactiveIcon: svgIcons(AssetsIcons.market, isActive: false),
          title: "",
        ),
        PersistentBottomNavBarItem(
          icon: svgIcons(AssetsIcons.bell, isActive: true),
          inactiveIcon: svgIcons(AssetsIcons.bell, isActive: false),
          title: "",
        ),
        PersistentBottomNavBarItem(
          icon:  svgIcons(AssetsIcons.person, isActive: true),
          inactiveIcon: svgIcons(AssetsIcons.person, isActive: false),
          title: "",
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: controller,
      screens: buildScreens(),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      handleAndroidBackButtonPress: true,
      hideNavigationBarWhenKeyboardAppears: true,
      
      items: navBarsItems(),
      navBarStyle: NavBarStyle.style12, // Set your preferred style here
      backgroundColor: Colors.white,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(15),
        colorBehindNavBar: Colors.grey.shade300,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(-6, -6),
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.7),
            blurRadius: 8,
            offset: const Offset(6, 6),
          ),
        ],
      ),
    );
  }
}
