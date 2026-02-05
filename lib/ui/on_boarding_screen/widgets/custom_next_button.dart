import 'package:flutter/material.dart';
import 'package:up_todo/ui/on_boarding_screen/widgets/onboarding_data.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({super.key, required this.currentIndex, this.onPressed});
  final Function()? onPressed;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.buttonPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      onPressed: onPressed,
      child: Text(
        currentIndex == onBoardingList.length - 1
            ? AppTexts.getStarted
            : AppTexts.next,
        style: const TextStyle(color: AppColors.white, fontSize: 16),
      ),
    );
  }
}
