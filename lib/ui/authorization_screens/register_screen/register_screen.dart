import 'package:flutter/material.dart';
import 'package:up_todo/ui/authorization_screens/login_screen/login_screen.dart';
import 'package:up_todo/ui/authorization_screens/widgets/additional_choise.dart';
import 'package:up_todo/ui/authorization_screens/widgets/or_divided.dart';
import 'package:up_todo/ui/widgets/custom_primary_button.dart';
import 'package:up_todo/ui/widgets/login_with_button.dart';
import 'package:up_todo/ui/widgets/main_text_field.dart';
import 'package:up_todo/utils/constants/app_assets.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const LoginScreen()),
            );
          },
          icon: Icon(Icons.arrow_back_ios, color: AppColors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              SizedBox(height: 40),
              Text(
                textAlign: TextAlign.start,
                AppTexts.register,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 50),
              Text(
                AppTexts.username,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
              SizedBox(height: 8),
              MainTextField(),
              SizedBox(height: 24),
              Text(
                AppTexts.password,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
              SizedBox(height: 8),
              MainTextField(
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                isPassword: true,
                hintText: AppTexts.passwordHintText,
              ),
              SizedBox(height: 24),
              Text(
                AppTexts.confirmPassword,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
              SizedBox(height: 8),
              MainTextField(
                hintText: AppTexts.passwordHintText,
                isPassword: true,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
              SizedBox(height: 70),
              CustomPrimaryButton(
                text: AppTexts.register,
                width: double.infinity,
                height: 50,
              ),
              SizedBox(height: 30),
              OrDivided(),
              SizedBox(height: 30),
              LoginWithButton(
                title: AppTexts.registerGoogle,
                logo: AppAssets.googleLogo,
              ),
              SizedBox(height: 20),
              LoginWithButton(
                title: AppTexts.registerApple,
                logo: AppAssets.appleLogo,
              ),
              Spacer(),
              AdditionalChoise(
                title: AppTexts.haveAccount,
                subTitle: AppTexts.login,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
