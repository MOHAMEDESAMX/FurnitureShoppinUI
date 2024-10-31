import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/product_add_to_row.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/product_price_row.dart';
import 'package:gap/gap.dart';

class ProductView extends StatelessWidget {
  const ProductView(
      {super.key,
      required this.imageurl,
      required this.title,
      required this.price});

  final String imageurl;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 325.w,
                    height: 307.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                        image: AssetImage(imageurl),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Gap(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Styles.textstyle24
                            .copyWith(color: const Color(0xff303030)),
                      ),
                    ],
                  ),
                  Gap(15.h),
                  ProductPriceRow(
                    price: price,
                  ),
                  Gap(15.h),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 40,
                      ),
                      Gap(5.w),
                      Text(
                        "4.5",
                        style: Styles.textstyleproduct18,
                      ),
                      Gap(10.w),
                      Text(
                        "(50 reviews)",
                        style: Styles.textstylecard14,
                      )
                    ],
                  ),
                  Gap(10.h),
                  Text(
                    "Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ",
                    style: Styles.textstyle14,
                  ),
                  Gap(10.h),
                  ProductAddToRow(title: title, imageurl: imageurl, price: price,),
                  
                ],
              ),
            ),
          ),
        ));
  }
}
