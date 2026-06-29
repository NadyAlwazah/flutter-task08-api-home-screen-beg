import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
              left: -17,
              top: -6,
              child: SvgPicture.asset(AssetsData.iconHighlightSvg),
            ),
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}
