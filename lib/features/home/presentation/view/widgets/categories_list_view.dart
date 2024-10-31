import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/model_view/categories_list.dart';
import 'package:gap/gap.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            bool isSelected = (selectedIndex == index);
            return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: (isSelected) ? Colors.black : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 44.w,
                    height: 44.h,
                    child: Center(
                      child: SvgPicture.asset(
                        categoriesIcon[index],
                        width: 24,
                        height: 24,
                        colorFilter: ColorFilter.mode(
                          isSelected ? Colors.white : Colors.black,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  Gap(5.h),
                  Text(
                    categoriesName[index],
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: isSelected ? Colors.black : Colors.grey,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => Gap(15.w),
          itemCount: categoriesIcon.length),
    );
  }
}
