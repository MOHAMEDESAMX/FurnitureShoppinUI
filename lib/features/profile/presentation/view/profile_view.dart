import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/features/profile/presentation/view/widgets/profile_app_bar.dart';
import 'package:furniture_shoppin_ui/features/profile/presentation/view/widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ProfileAppBar(),
      body: ProfileBody(),
    );
  }
}
