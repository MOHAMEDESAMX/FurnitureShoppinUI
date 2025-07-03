import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_icons.dart';
import 'package:furniture_shoppin_ui/core/functions/navigations.dart';
import 'package:furniture_shoppin_ui/core/functions/show_toast.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/auth/presentation/view/login_view.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Profile",
        style: Styles.textstylemerr16,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            if (context.mounted) {
              showToast(
                context: context,
                text: "Successfully Logged Out",
                color: Colors.green,
                icon: Icons.check,
              );
              navRplacement(context, const LoginView());
            } else {
              showToast(
                // ignore: use_build_context_synchronously
                context: context,
                text: "Failed to Logged Out",
                color: Colors.red,
                icon: Icons.error,
              );
            }
          },
          icon: SvgPicture.asset(
            AssetsIcons.logout,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
