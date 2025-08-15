
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/functions/navigations.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/my_cart_view.dart';

class FavoritesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FavoritesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 25.r,
          )),
      actions: [
        IconButton(
          onPressed: () {
            navNewScreen(context, const MyCartView());
          },
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.grey,
            size: 25.r,
          ),
        )
      ],
      title: Text(
        "Favorites",
        style: Styles.textstylemerr16,
      ),
      centerTitle: true,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
