import 'package:flutter/material.dart';
import 'package:up_todo/l10n/app_localizations.dart';
import 'package:up_todo/presentation/on_boarding_screen/widgets/on_boarding_model.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';


class CustomNextButton extends StatelessWidget {
  const CustomNextButton({
    super.key,
    required this.currentIndex,
    this.onPressed,
  });
  final Function()? onPressed;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.buttonPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      onPressed: onPressed,
      child: Text(
        currentIndex == onBoardingList.length - 1 ? l10n.getStarted : l10n.next,
        style: const TextStyle(color: AppColors.white, fontSize: 16),
      ),
    );
  }
}
