import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/slider_list_tile.dart';

class SliderList extends StatelessWidget {
  const SliderList({
    super.key,
    required this.title,
    required this.subtitle, required this.onTap,
  });
  final String title;
  final String subtitle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SliderListTile(
        show: true,
        onTap: onTap,
        title: title,
        subtitle: subtitle,
      ),
    );
  }
}
