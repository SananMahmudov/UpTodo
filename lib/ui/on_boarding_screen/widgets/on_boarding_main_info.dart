import 'package:flutter/material.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/onboarding_data.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/page_indicator.dart';
import 'package:up_todo/utils/constants/app_colors.dart';

class OnBoardingMainInfo extends StatelessWidget {
  final PageController pageController;
  final int currentIndex;
  final ValueChanged<int> onPageChanged;

  const OnBoardingMainInfo({
    super.key,
    required this.pageController,
    required this.currentIndex,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onBoardingList.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        final item = onBoardingList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              item.image,
              const SizedBox(height: 50),
              PageIndicator(
                currentIndex: currentIndex,
                count: onBoardingList.length,
              ),
              const SizedBox(height: 62),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                item.subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.lightGrey,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
