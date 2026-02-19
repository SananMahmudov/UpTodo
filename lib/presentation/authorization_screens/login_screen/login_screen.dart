import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/presentation/authorization_screens/widgets/additional_choise.dart';
import 'package:up_todo/presentation/authorization_screens/widgets/or_divided.dart';
import 'package:up_todo/presentation/home_screen/home_screen.dart';
import 'package:up_todo/presentation/authorization_screens/register_screen/register_screen.dart';
import 'package:up_todo/presentation/home_screen/widgets/task_provider.dart';
import 'package:up_todo/presentation/widgets/custom_primary_button.dart';
import 'package:up_todo/presentation/widgets/login_with_button.dart';
import 'package:up_todo/presentation/widgets/main_text_field.dart';
import 'package:up_todo/core/constants/constants/app_assets.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';
import 'package:up_todo/core/constants/constants/app_texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                textAlign: TextAlign.start,
                AppTexts.login,
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
              SizedBox(height: 70),
              CustomPrimaryButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChangeNotifierProvider(
                        create: (context) => TaskProvider(),
                        child: const HomeScreen(),
                      ),
                    ),
                  );
                },
                text: AppTexts.login,
                width: double.infinity,
                height: 50,
              ),
              SizedBox(height: 30),
              OrDivided(),
              SizedBox(height: 30),
              LoginWithButton(logo: AppAssets.googleLogo),
              SizedBox(height: 20),
              LoginWithButton(
                title: AppTexts.loginApple,
                logo: AppAssets.appleLogo,
              ),
              Spacer(),
              AdditionalChoise(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const RegisterScreen()),
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
