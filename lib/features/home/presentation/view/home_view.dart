import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/home_app_bar.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/home_body.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/widgets/slider_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  final bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderDrawer(
          appBar: HomeAppBar(
            sliderDrawerKey: _sliderDrawerKey,
          ),
          key: _sliderDrawerKey,
          sliderOpenSize: 277.w,
          slider: const SliderView(),
          child: const HomeBody()),
    );
  }
}
