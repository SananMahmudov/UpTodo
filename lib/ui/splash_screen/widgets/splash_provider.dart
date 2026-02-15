import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashProvider with ChangeNotifier {
  bool? _isOnboardingCompleted;

  bool? get isOnboardingCompleted => _isOnboardingCompleted;

  Future<void> checkNavigationStatus() async {
    // Имитируем задержку для сплэш-скрина (логотипа)
    await Future.delayed(const Duration(seconds: 2));

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _isOnboardingCompleted = prefs.getBool('OnBoardingCompleted') ?? false;

    notifyListeners();
  }
}