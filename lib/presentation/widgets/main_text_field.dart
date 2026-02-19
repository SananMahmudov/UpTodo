import 'package:flutter/material.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';
import 'package:up_todo/core/constants/constants/app_texts.dart';

class MainTextField extends StatefulWidget {
  const MainTextField({
    super.key,
    this.isActive,
    this.isPassword,
    this.hintText,
    this.suffixIcon,
    this.controller, this.fillColor,
  });

  final String? hintText;
  final Color? fillColor;
  final bool? isActive;
  final Widget? suffixIcon;
  final bool? isPassword;
  final TextEditingController? controller;

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: AppColors.white),
      obscureText: widget.isPassword ?? false,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        hintStyle: TextStyle(color: AppColors.inputWordsColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.inputWordsColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.inputWordsColor),
        ),

        fillColor: widget.fillColor ?? AppColors.inputColor,
        filled: true,
        hintText: widget.hintText ?? AppTexts.enterYourUsername,
      ),
    );
  }
}
