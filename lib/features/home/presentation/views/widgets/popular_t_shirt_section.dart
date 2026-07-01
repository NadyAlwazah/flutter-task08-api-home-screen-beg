import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/styles.dart';
import 'package:flutter_task08_api_home_screen_beg/features/home/data/manager/product_cubit/product_cubit.dart';
import 'package:flutter_task08_api_home_screen_beg/features/home/presentation/views/widgets/product_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularTShirtSection extends StatelessWidget {
  const PopularTShirtSection({super.key});

  @override
  Widget build(BuildContext context) {
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

        SizedBox(
          height: 199.h,
          child: BlocBuilder<ProductCubit, ProductStates>(
            builder: (context, state) {
              if (state is ProductLoadingState) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is ProductErrorState) {
                return Center(child: Text(state.message));
              }
              if (state is ProductSuccessState) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    final product = state.products[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: ProductCard(product: product),
                    );
                  },
                );
              }

              /// حالة مبدئية
              return const SizedBox.shrink();
            },
          ),
        ),
      ],
    );
  }
}
