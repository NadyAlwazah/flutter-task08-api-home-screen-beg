import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/app_colors.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/assets.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/styles.dart';
import 'package:flutter_task08_api_home_screen_beg/core/widgets/app_loader.dart';
import 'package:flutter_task08_api_home_screen_beg/features/home/data/models/product_model.dart';

class ProductCard extends StatefulWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: Stack(
        children: [
          Container(
            width: 157.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.r),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000).withValues(alpha: 0.04),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // الصورة + المفضلة
                  Expanded(
                    child: Stack(
                      children: [
                        Center(
                          child: CachedNetworkImage(
                            imageUrl: widget.product.image,
                            width: 95.r,
                            height: 95.r,
                            fit: BoxFit.contain,
                            placeholder: (context, url) =>
                                const Center(child: AppLoader()),
                            errorWidget: (context, url, error) =>
                                const Center(child: Icon(Icons.error)),
                          ),
                        ),

                        Positioned(
                          top: 0,
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            child: SvgPicture.asset(
                              isFavorite
                                  ? AssetsData.iconFavoriteRedSvg
                                  : AssetsData.iconFavoriteSvg,
                              width: 14.r,
                              height: 14.r,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 8.h),

                  /// BEST SELLER
                  Text(
                    'BEST SELLER',
                    style: Styles.textStyle12W500Poppins.copyWith(
                      color: AppColors.primary,
                    ),
                  ),

                  SizedBox(height: 4.h),

                  /// اسم المنتج
                  Text(
                    widget.product.title,
                    // maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle14W600.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  /// السعر
                  Padding(
                    padding: EdgeInsets.only(right: 40.w),
                    child: Text(
                      '\$${widget.product.price.toStringAsFixed(2)}',
                      style: Styles.textStyle14W500.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// زر الإضافة
          Positioned(
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 34.w,
                height: 35.5.h,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.r),
                    bottomRight: Radius.circular(18.r),
                  ),
                ),
                child: Center(
                  child: Icon(Icons.add, color: Colors.white, size: 16.r),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
