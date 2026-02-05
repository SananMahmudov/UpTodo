import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_todo/ui/on_boarding_screen/on_boarding_screen.dart';
import 'package:up_todo/utils/constants/app_assets.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.appLogo, fit: BoxFit.contain),
              SizedBox(height: 18),
              Text(
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
      ),
    );
  }
}
