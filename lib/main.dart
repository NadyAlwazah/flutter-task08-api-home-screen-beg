import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task08_api_home_screen_beg/core/utils/app_colors.dart';
import 'package:flutter_task08_api_home_screen_beg/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const ApiHomeApp());
}

class ApiHomeApp extends StatelessWidget {
  const ApiHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
