import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:up_todo/utils/constants/app_colors.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.currentIndex,
    required this.count,
  });
  final int currentIndex;
  final int count;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: count,
      effect: WormEffect(
        activeDotColor: AppColors.white,
        dotColor: AppColors.lightGrey,
        dotHeight: 4,
        dotWidth: 26,
      ),
    );
  }
}
