import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/ui/authorization_screens/login_screen/login_screen.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/custom_back_button.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/custom_next_button.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/on_boarding_main_info.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/on_boarding_provider.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<OnBoardingProvider>();
    void goToLogin() {
      provider.completeOnboarding();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: goToLogin,
            child: const Text(
              AppTexts.skip,
              style: TextStyle(color: AppColors.lightGrey),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnBoardingMainInfo(
                pageController: provider.pageController,
                currentIndex: provider.currentIndex,
                onPageChanged: (index) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (provider.currentIndex > 0)
                    CustomBackButton(onPressed: provider.backPage)
                  else
                    const SizedBox(width: 60),
                  CustomNextButton(
                    currentIndex: provider.currentIndex,
                    onPressed: () => provider.nextPage(goToLogin),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
