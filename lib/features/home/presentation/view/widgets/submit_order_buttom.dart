import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/shared_widgets/custom_buttom.dart';

class SubmitOrderButtom extends StatelessWidget {
  const SubmitOrderButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 60.h,
        child: CustomButtom(
          onPressed: () {},
          text: 'SUBMIT ORDER',
        ));
  }
}
