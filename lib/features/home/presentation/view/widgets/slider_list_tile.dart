
import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';

class SliderListTile extends StatelessWidget {
  const SliderListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
  final String title;
  final String subtitle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Text(
          title,
          style: Styles.textstyle16.copyWith(
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: Styles.textstyle12,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.black,
          size: 18,
        ),
      ),
    );
  }
}