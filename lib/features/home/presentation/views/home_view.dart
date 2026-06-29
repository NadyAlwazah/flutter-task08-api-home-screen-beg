import 'package:flutter/material.dart';
import 'package:flutter_task08_api_home_screen_beg/features/home/presentation/views/widgets/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: HomeAppBar());
  }
}
