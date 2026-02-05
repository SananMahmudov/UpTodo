import 'package:flutter/material.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({super.key, this.onPressed, this.text, this.width, this.height});
  final Function()? onPressed;
  final double? width;
  final double? height;

  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.buttonPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        onPressed: onPressed,
        child: Text(
          text ?? AppTexts.back,
          style: const TextStyle(color: AppColors.white, fontSize: 16),
        ),
      ),
    );
  }
}
