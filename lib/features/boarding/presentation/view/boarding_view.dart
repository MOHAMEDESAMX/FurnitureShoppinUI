import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_images.dart';
import 'package:furniture_shoppin_ui/core/funcations/naviagtions.dart';
//import 'package:furniture_shoppin_ui/core/funcations/naviagtions.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_buttom.dart';
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
            top: 231,
            left: 30,
            child: Text(
              "MAKE YOUR",
              style: Styles.textstyle24,
            ),
          ),
          Positioned(
            top: 276,
            left: 30,
            child: Text(
              "HOME BEAUTIFUL",
              style: Styles.textstyle30,
            ),
          ),
          Positioned(
            left: 59,
            top: 349,
            child: SizedBox(
              width: 286,
              height: 105,
              child: Text(
                "The best simple place where you discover most wonderful furnitures and make your home beautiful",
                style: Styles.textstyle18,
              ),
            ),
          ),
          Positioned(
            bottom: 300,
            left: 380,
            child: SizedBox(
              width: 160,
              height: 55,
              child: CustomButtom(
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
