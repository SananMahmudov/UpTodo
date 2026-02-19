import 'package:flutter/material.dart';

import 'package:up_todo/core/constants/constants/app_colors.dart';
import 'package:up_todo/l10n/app_localizations.dart';

class OrDivided extends StatelessWidget {
  const OrDivided({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.lightGrey, thickness: 1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            l10n.or,
            style: TextStyle(
              color: AppColors.lightGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(child: Divider(color: AppColors.lightGrey, thickness: 1)),
      ],
    );
  }
}
