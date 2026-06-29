import 'package:flutter/material.dart';
import 'package:flutter_task08_api_home_screen_beg/features/home/presentation/views/widgets/home_search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 19.0, horizontal: 20),
      child: CustomScrollView(
        slivers: [SliverToBoxAdapter(child: HomeSearchBar())],
      ),
    );
  }
}
