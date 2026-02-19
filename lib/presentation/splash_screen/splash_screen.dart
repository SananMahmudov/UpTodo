import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/presentation/authorization_screens/login_screen/login_screen.dart';
import 'package:up_todo/presentation/on_boarding_screen/on_boarding_screen.dart';
import 'package:up_todo/presentation/on_boarding_screen/widgets/on_boarding_provider.dart';
import 'package:up_todo/presentation/splash_screen/widgets/splash_provider.dart';
import 'package:up_todo/core/constants/constants/app_assets.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';
import 'package:up_todo/core/constants/constants/app_texts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.microtask(
      () => context.read<SplashProvider>().checkNavigationStatus(),
    );

    final isOnboardingCompleted = context.select<SplashProvider, bool?>(
      (p) => p.isOnboardingCompleted,
    );

    if (isOnboardingCompleted != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => isOnboardingCompleted
                ? const LoginScreen()
                : ChangeNotifierProvider(
                    create: (_) => OnBoardingProvider(),
                    child: const OnBoardingScreen(),
                  ),
          ),
        );
      });
    }

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.appLogo, fit: BoxFit.contain),
            const SizedBox(height: 18),
            const Text(
              AppTexts.appName,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
