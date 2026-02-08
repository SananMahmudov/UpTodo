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
    return Stack(
      children: [
        PageView.builder(
          controller: pageController,
          itemCount: onBoardingList.length,
          onPageChanged: onPageChanged,
          itemBuilder: (context, index) {
            final item = onBoardingList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const Spacer(flex: 3),
                  item.image,
                  const Spacer(flex: 2),
                  const SizedBox(height: 20),
                  const Spacer(flex: 2),
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

                  const Spacer(flex: 3),
                ],
              ),
            );
          },
        ),

        Align(
          alignment: const Alignment(0, 0.25),
          child: PageIndicator(
            currentIndex: currentIndex,
            count: onBoardingList.length,
          ),
        ),
      ],
    );
  }
}
