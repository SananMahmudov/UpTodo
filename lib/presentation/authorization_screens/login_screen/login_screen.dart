import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/l10n/app_localizations.dart';
import 'package:up_todo/logic/providers/locale_provider.dart';
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
import 'package:up_todo/widgets/change_language_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final localeProvider = Provider.of<LocaleProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text(
                l10n.login,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                l10n.username,
                style: const TextStyle(color: AppColors.white, fontSize: 16),
              ),
              const SizedBox(height: 8),
              const MainTextField(),
              const SizedBox(height: 24),
              Text(
                l10n.password,
                style: const TextStyle(color: AppColors.white, fontSize: 16),
              ),
              const SizedBox(height: 8),
              MainTextField(
                suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                isPassword: true,
                hintText: l10n.passwordHintText,
              ),
              const SizedBox(height: 70),
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
                text: l10n.login,
                width: double.infinity,
                height: 50,
              ),
              const SizedBox(height: 30),
              const OrDivided(),
              const SizedBox(height: 30),
              LoginWithButton(
                logo: AppAssets.googleLogo,
                title: l10n.loginGoogle,
              ),
              const SizedBox(height: 20),
              LoginWithButton(
                title: l10n.loginApple,
                logo: AppAssets.appleLogo,
              ),
              const SizedBox(height: 20),
              ChangeLanguageButton(localeProvider: localeProvider),
              const Spacer(),
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
