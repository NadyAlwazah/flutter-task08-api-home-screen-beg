import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/styles.dart';
import 'package:flutter_task08_api_home_screen_beg/features/home/data/models/product_model.dart';
import 'package:flutter_task08_api_home_screen_beg/features/home/presentation/views/widgets/product_card.dart';

class PopularTShirtSection extends StatelessWidget {
  const PopularTShirtSection({super.key});

  @override
  Widget build(BuildContext context) {
    // API قائمة مؤقتة لحين إضافة الـ
    final List<ProductModel> tempProducts = [
      ProductModel(
        id: 1,
        title: "Fjallraven Backpack",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_t.png",
        price: 109.95,
      ),
      ProductModel(
        id: 2,
        title: "Mens Casual Premium Slim Fit T-Shirts",
        image:
            "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_t.png",
        price: 22.30,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // See all العنوان + زر
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Popular T-shirt', style: Styles.textStyle16W500),
            GestureDetector(
              onTap: () {},
              child: Text('See all', style: Styles.textStyle12W500Poppins),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // قائمة المنتجات
        SizedBox(
          height: 199.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tempProducts.length,
            itemBuilder: (context, index) {
              final product = tempProducts[index];
              return Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: ProductCard(product: product),
              );
            },
          ),
        ),
      ],
    );
  }
}
