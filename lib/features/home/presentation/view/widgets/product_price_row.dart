import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/items_count.dart';

class ProductPriceRow extends StatelessWidget {
  const ProductPriceRow({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          price,
          style: Styles.textstyle30Nun,
        ),
        const ItemsCount(),
      ],
    );
  }
}
