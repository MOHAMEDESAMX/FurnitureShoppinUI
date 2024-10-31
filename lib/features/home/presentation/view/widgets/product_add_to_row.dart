import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/funcations/naviagtions.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_buttom.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/model_view/products_list.dart';

class ProductAddToRow extends StatelessWidget {
  const ProductAddToRow({
    super.key,
    required this.imageurl,
    required this.title,
    required this.price,
  });
  final String imageurl;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(6)),
          child: const Icon(
            Icons.bookmark_border,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 250.w,
          height: 60.h,
          child: CustomButtom(
            text: "Add to cart",
            textStyle: Styles.textstylebuttom18.copyWith(
              fontSize: 20,
            ),
            onPressed: () {
              addToCart(
                Products(
                  title: title,
                  price: price,
                  imageUrl: imageurl,
                ),
              );
              mySnakeBar(context, "Item added to cart", Colors.green);
            },
          ),
        ),
        
      ],
    );
  }
}
