import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/app_colors.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/assets.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/styles.dart';

class NewArrivalsSection extends StatelessWidget {
  const NewArrivalsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// العنوان
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("New Arrivals", style: Styles.textStyle16W600),
            GestureDetector(
              onTap: () {},
              child: Text("See all", style: Styles.textStyle12W500Poppins),
            ),
          ],
        ),

        SizedBox(height: 16.h),

        /// البطاقة
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 95.h,
              decoration: BoxDecoration(
                color: AppColors.backgroundColorItem,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.04),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),

              /// النصوص
              child: Padding(
                padding: EdgeInsets.only(left: 22.w, top: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Summer Sale",
                      style: Styles.textStyle12W500Raleway.copyWith(
                        color: const Color(0xFF3B3B3B),
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      '15% OFF',
                      style: TextStyle(
                        fontFamily: 'FuturaPTCond',
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFF674DC5),
                        fontSize: 36.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 4.h,
              left: 130.w,
              child: SvgPicture.asset(
                AssetsData.markSvg,
                width: 15.482770919799805.w,
                height: 16.726905822753906.h,
              ),
            ),
            Positioned(
              top: 60.h,
              left: 8.w,
              child: SvgPicture.asset(
                AssetsData.markSvg,
                width: 15.482770919799805.w,
                height: 16.726905822753906.h,
              ),
            ),
            Positioned(
              top: 66.h,
              left: 158.w,
              child: SvgPicture.asset(
                AssetsData.markSvg,
                width: 15.482770919799805.w,
                height: 16.726905822753906.h,
              ),
            ),
            Positioned(
              top: 15.h,
              right: 9.52.w,
              child: SvgPicture.asset(
                AssetsData.markSvg,
                width: 15.482770919799805.w,
                height: 16.726905822753906.h,
              ),
            ),

            /// كلمة NEW
            Positioned(
              top: 12.h,
              left: 176.w,
              child: SvgPicture.asset(
                AssetsData.newSvg,
                width: 26.r,
                height: 26.r,
              ),
            ),

            /// صورة التيشيرت
            Positioned(
              right: 19.76.w,
              top: -24.24.h,
              child: Image.asset(AssetsData.tShirt),
            ),
          ],
        ),
      ],
    );
  }
}
