import 'package:flutter/material.dart';
import 'package:up_todo/logic/providers/locale_provider.dart';
import 'package:up_todo/presentation/widgets/custom_primary_button.dart';

class ChangeLanguageButton extends StatelessWidget {
  const ChangeLanguageButton({super.key, required this.localeProvider});

  final LocaleProvider localeProvider;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomPrimaryButton(
          width: 80,
          height: 60,
          text: localeProvider.locale.languageCode.toUpperCase(),
          onPressed: () {
            if (localeProvider.locale.languageCode == 'en') {
              localeProvider.setLocale(const Locale('ru'));
            } else if (localeProvider.locale.languageCode == 'ru') {
              localeProvider.setLocale(const Locale('az'));
            } else {
              localeProvider.setLocale(const Locale('en'));
            }
          },
        ),
      ],
    );
  }
}
