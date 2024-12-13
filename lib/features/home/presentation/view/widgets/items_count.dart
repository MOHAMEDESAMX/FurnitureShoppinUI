import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';

class ItemsCount extends StatefulWidget {
  const ItemsCount({
    super.key,
  });

  @override
  State<ItemsCount> createState() => _ItemsCountState();
}

class _ItemsCountState extends State<ItemsCount> {
  double itemsCount = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 113.w,
      height: 30.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                itemsCount++;
              });
            },
            icon: Icon(
              Icons.add,
              color: Colors.black,
              size: 25.r,
            ),
          ),
          Text(
            "${itemsCount.toInt()}",
            style: Styles.textstylebutton18.copyWith(color: Colors.black),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                if (itemsCount == 0) {
                  itemsCount = 0;
                } else {
                  itemsCount--;
                }
              });
            },
            icon: Icon(
              Icons.horizontal_rule,
              color: Colors.black,
              size: 25.r,
            ),
          ),
        ],
      ),
    );
  }
}
