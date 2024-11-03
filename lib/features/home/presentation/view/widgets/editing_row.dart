import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_icons.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';

class EditingRow extends StatelessWidget {
  const EditingRow({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.textstylecheck18,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AssetsIcons.edit),
        ),
      ],
    );
  }
}
