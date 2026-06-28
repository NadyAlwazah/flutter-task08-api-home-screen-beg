import 'package:flutter/material.dart';
import 'package:flutter_task08_api_home_screen_beg/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const ApiHomeApp());
}

class ApiHomeApp extends StatelessWidget {
  const ApiHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView());
  }
}
