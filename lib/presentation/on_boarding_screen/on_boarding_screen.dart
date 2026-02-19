import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/l10n/app_localizations.dart';
import 'package:up_todo/presentation/authorization_screens/login_screen/login_screen.dart';
import 'package:up_todo/presentation/on_boarding_screen/widgets/custom_back_button.dart';
import 'package:up_todo/presentation/on_boarding_screen/widgets/custom_next_button.dart';
import 'package:up_todo/presentation/on_boarding_screen/widgets/on_boarding_main_info.dart';
import 'package:up_todo/presentation/on_boarding_screen/widgets/on_boarding_provider.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
            child:  Text(
              l10n.skip,
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
