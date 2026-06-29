import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/app_colors.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/assets.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AssetsData.iconMenuSvg),
        ),
        title: Stack(
          clipBehavior: Clip.none,
          children: [
            Text("Explore", style: Styles.textStyle32Bold),
            Positioned(
              left: -17.w,
              top: -6.h,
              child: SvgPicture.asset(AssetsData.iconHighlightSvg),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: AppColors.backgroundColorItem,
                  radius: 22.r,
                  child: SvgPicture.asset(
                    AssetsData.iconBagSvg,
                    width: 24.r,
                    height: 24.r,
                  ),
                ),
              ),
              Positioned(
                top: 10.h,
                right: 10.w,
                child: CircleAvatar(backgroundColor: Colors.red, radius: 4.r),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
