import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/categories_list_view.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/home_grid_view.dart';
import 'package:gap/gap.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isTablet = (MediaQuery.of(context).size.width > 450);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: Gap(10.h),
            ),
            HomeGridView(isTablet: isTablet),
          ],
        ),
      ),
    );
  }
}
