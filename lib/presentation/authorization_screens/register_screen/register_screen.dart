import 'package:flutter/material.dart';
import 'package:up_todo/l10n/app_localizations.dart';
import 'package:up_todo/presentation/authorization_screens/login_screen/login_screen.dart';
import 'package:up_todo/presentation/authorization_screens/widgets/additional_choise.dart';
import 'package:up_todo/presentation/authorization_screens/widgets/or_divided.dart';
import 'package:up_todo/presentation/widgets/custom_primary_button.dart';
import 'package:up_todo/presentation/widgets/login_with_button.dart';
import 'package:up_todo/presentation/widgets/main_text_field.dart';
import 'package:up_todo/core/constants/constants/app_assets.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
                l10n.register,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 50),
              Text(
                l10n.username,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
              SizedBox(height: 8),
              MainTextField(),
              SizedBox(height: 24),
              Text(
                l10n.password,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
              SizedBox(height: 8),
              MainTextField(
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                isPassword: true,
                hintText: l10n.passwordHintText,
              ),
              SizedBox(height: 24),
              Text(
                l10n.confirmPassword,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
              SizedBox(height: 8),
              MainTextField(
                hintText: l10n.passwordHintText,
                isPassword: true,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
              SizedBox(height: 70),
              CustomPrimaryButton(
                text: l10n.register,
                width: double.infinity,
                height: 50,
              ),
              SizedBox(height: 30),
              OrDivided(),
              SizedBox(height: 30),
              LoginWithButton(
                title: l10n.registerGoogle,
                logo: AppAssets.googleLogo,
              ),
              SizedBox(height: 20),
              LoginWithButton(
                title: l10n.registerApple,
                logo: AppAssets.appleLogo,
              ),
              Spacer(),
              AdditionalChoise(
                title: l10n.haveAccount,
                subTitle: l10n.login,
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
