import 'package:flutter/material.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';
import 'package:up_todo/l10n/app_localizations.dart';

class AdditionalChoise extends StatelessWidget {
  const AdditionalChoise({
    super.key,
    this.onPressed,
    this.title,
    this.subTitle,
  });

  final String? title;
  final String? subTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title ?? l10n.dontHaveAnAccount,
          style: TextStyle(color: AppColors.lightGrey, fontSize: 16),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            subTitle ?? l10n.register,
            style: TextStyle(color: AppColors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
