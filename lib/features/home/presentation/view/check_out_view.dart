import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/check_out_app_bar.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/delivery_method.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/editing_row.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/payment_row.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/shipping_address.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/submit_order_button.dart';
import 'package:gap/gap.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CheckOutAppBar(),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              children: [
                const EditingRow(
                  text: "Shipping Address",
                ),
                Gap(5.h),
                const ShippingAddress(),
                const EditingRow(text: "Payment"),
                const PaymentRow(),
                Gap(5.h),
                const EditingRow(text: "Delivery method"),
                const DeliveryMethod(),
                const Spacer(),
                const SubmitOrderButton(),
              ],
            ),
          ),
        ));
  }
}
