import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_images.dart';
import 'package:furniture_shoppin_ui/core/functions/navigations.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_button.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/login_view.dart';

class BoardingView extends StatelessWidget {
  const BoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              AssetsImages.boardingImage,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 231.h,
            left: 30.w,
            child: Text(
              "MAKE YOUR",
              style: Styles.textstyle24,
            ),
          ),
          Positioned(
            top: 276.h,
            left: 30.w,
            child: Text(
              "HOME BEAUTIFUL",
              style: Styles.textstyle30,
            ),
          ),
          Positioned(
            left: 59.w,
            top: 349.h,
            child: SizedBox(
              width: 286.w,
              height: 120.h,
              child: Text(
                "The best simple place where you discover most wonderful furnitures and make your home beautiful",
                style: Styles.textstyle18,
              ),
            ),
          ),
          Positioned(
            bottom: 50.h,
            left: 100.w,
            child: SizedBox(
              width: 160.w,
              height: 60.h,
              child: CustomButton(
                onPressed: () {
                  navRplacement(
                    context,
                    const LoginView(),
                  );
                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView(),),);
                },
                text: "Get Started",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
