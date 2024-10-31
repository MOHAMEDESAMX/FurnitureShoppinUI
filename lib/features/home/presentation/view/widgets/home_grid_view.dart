import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_icons.dart';
import 'package:furniture_shoppin_ui/core/funcations/naviagtions.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/model_view/products_list.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/product_view.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({
    super.key,
    required this.isTablet,
  });

  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (isTablet) ? 3 : 2,
        crossAxisSpacing: 10.h,
        mainAxisSpacing: 10.w,
        childAspectRatio: .7,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return InkWell(
            onTap: () {
              navpewScreen(
                context,
                ProductView(
                  imageurl: myProducts[index].imageUrl,
                  title: myProducts[index].title,
                  price: myProducts[index].price,
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(
                              myProducts[index].imageUrl,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 8,
                        bottom: 8,
                        child: Container(
                          width: 20.w,
                          height: 25.h,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.transparent.withOpacity(.2),
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.5), width: 1),
                          ),
                          child: SvgPicture.asset(
                            AssetsIcons.shopping,
                            colorFilter: const ColorFilter.mode(
                              Colors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  myProducts[index].title,
                  style: Styles.textstyle14
                      .copyWith(color: const Color(0xff606060)),
                ),
                SizedBox(height: 4.h),
                Text(
                  myProducts[index].price,
                  style: Styles.textstylecard14,
                ),
              ],
            ),
          );
        },
        childCount: myProducts.length,
      ),
    );
  }
}
