
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final bool show;
  final String text;
  final Color color;

  const NotificationCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.show,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 5,
        child: Row(
          children: [
            // Image section
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                imageUrl,
                height: 140.h,
                width: 90.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: Styles.textstylecard14,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      subtitle,
                      style: Styles.textstyle12,
                    ),
                  ],
                ),
              ),
            ),
            show
                ? Text(
                    text,
                    style: Styles.textstyle12.copyWith(color: color),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
