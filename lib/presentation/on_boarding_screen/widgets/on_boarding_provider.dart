import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:up_todo/presentation/on_boarding_screen/widgets/on_boarding_model.dart';


class OnBoardingProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  Future<void> completeOnboarding() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('OnBoardingCompleted', true);
  }

  void nextPage(VoidCallback onFinished) {
    if (_currentIndex < onBoardingList.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      completeOnboarding();
      onFinished();
    }
  }

  void backPage() {
    if (_currentIndex > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
