import 'package:flutter/material.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';

import 'package:up_todo/l10n/app_localizations.dart';

class CustomBackButton extends StatefulWidget {
  const CustomBackButton({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return TextButton(
      onPressed: widget.onPressed,
      child: Text(
        l10n.back,
        style: const TextStyle(color: AppColors.lightGrey, fontSize: 16),
      ),
    );
  }
}
