import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/functions/navigations.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_button.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/success_order_view.dart';

class SubmitOrderButton extends StatelessWidget {
  const SubmitOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.h,
      child: CustomButton(
        onPressed: () {
          navRplacement(context, const SuccessOrderView());
        },
        text: 'SUBMIT ORDER',
      ),
    );
  }
}
