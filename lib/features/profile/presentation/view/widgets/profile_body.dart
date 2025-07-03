import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/constants/assets_images.dart';
import 'package:furniture_shoppin_ui/core/services/media_services.dart';
import 'package:furniture_shoppin_ui/core/themes/text_style.dart';
import 'package:furniture_shoppin_ui/features/profile/presentation/view/widgets/slider_list.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({
    super.key,
  });

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final GetIt getIt = GetIt.instance;
  late MediaServices mediaServices;
  @override
  void initState() {
    super.initState();
    mediaServices = getIt.get<MediaServices>();
  }

  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () async {
                  File? file = await mediaServices.imageFromGallery();
                  if (file != null) {
                    setState(() {
                      selectedImage = file;
                    });
                  }
                },
                child: CircleAvatar(
                  radius: 45.r,
                  backgroundImage: (selectedImage != null)
                      ? FileImage(selectedImage!)
                      : const AssetImage(AssetsImages.me) as ImageProvider,
                ),
              ),
              Gap(10.w),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Mohamed Essam",
                      style: Styles.textstyle16,
                    ),
                    Gap(10.h),
                    Text("mohamedessam.5530@gmail.com",
                        style: Styles.textstyle12),
                  ],
                ),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
            ],
          ),
          Gap(20.h),
          SliderList(
            title: "My orders",
            subtitle: "Already have 10 orders",
            onTap: () {},
          ),
          Gap(10.h),
          SliderList(
            title: 'Shipping Addresses',
            subtitle: '03 Addresses',
            onTap: () {},
          ),
          Gap(10.h),
          SliderList(
            title: "Payment Method",
            subtitle: "You have 2 cards",
            onTap: () {},
          ),
          Gap(10.h),
          SliderList(
            title: "My reviews",
            subtitle: "Reviews for 5 items",
            onTap: () {},
          ),
          Gap(10.h),
          SliderList(
            title: "Help Center",
            subtitle: "FAQ, Contact",
            onTap: () {},
          ),
          Gap(10.h),
        ],
      ),
    );
  }
}
