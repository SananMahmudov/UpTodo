import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:up_todo/ui/authorization_screens/login_screen/login_screen.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/custom_back_button.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/custom_next_button.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/on_boarding_main_info.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/onboarding_data.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  Future<void> _completeOnboarding() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('OnBoardingCompleted', true);
  }

  void _goToLogin() {
    _completeOnboarding(); 
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  void _nextPage() {
    if (currentIndex < onBoardingList.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _goToLogin(); 
    }
  }

  void _backPage() {
    if (currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: _goToLogin, 
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
                pageController: _pageController,
                currentIndex: currentIndex,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (currentIndex > 0)
                    CustomBackButton(onPressed: _backPage)
                  else
                    const SizedBox(width: 60),
                  CustomNextButton(
                    currentIndex: currentIndex,
                    onPressed: _nextPage,
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
