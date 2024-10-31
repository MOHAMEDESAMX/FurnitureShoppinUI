import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/funcations/naviagtions.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/model_view/products_list.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/cart_app_bar.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/items_count.dart';
import 'package:gap/gap.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}
class _MyCartViewState extends State<MyCartView> {
  double itemsCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const CartAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            itemBuilder: (context, index) {
              final myCart = addedToCart[index];
              return (myCart.title.isEmpty)
                  ? const Center(
                      child: Text(
                        "nothing here ",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    )
                  : Container(
                      width: double.infinity,
                      height: 100.h,
                      padding: const EdgeInsets.all(3),
                      margin: const EdgeInsets.all(5),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100.w,
                            height: 100.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Image.asset(
                              myCart.imageUrl,
                            ),
                          ),
                          Gap(20.w),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  myCart.title,
                                  style: Styles.textstylecard14,
                                ),
                                Text(
                                  myCart.price,
                                  style: Styles.textstyle16,
                                ),
                                const ItemsCount(),
                              ],
                            ),
                          ),
                          Gap(20.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton.outlined(
                                icon: const Icon(
                                  Icons.close,
                                ),
                                onPressed: () {
                                  removeFromCart(index);
                                  setState(() {});
                                  mySnakeBar(
                                    context,
                                    "Removed Succeefuly",
                                    Colors.red,
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    );
            },
            separatorBuilder: ((context, index) => Gap(8.h)),
            itemCount: addedToCart.length,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your promo code",
                suffixIcon: const Icon(Icons.arrow_forward),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "0",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Checkout action
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Center(
                child: Text(
                  "Check out",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
