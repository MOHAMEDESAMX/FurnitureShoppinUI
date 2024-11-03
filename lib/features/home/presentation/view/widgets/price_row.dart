import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';

class PricesRow extends StatelessWidget {
  const PricesRow({
    super.key,
    required this.text,
    required this.price,
  });
  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.textstylecheck18.copyWith(fontWeight: FontWeight.w300),
        ),
        Text(
          price,
          style: Styles.textstylecheck18.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
