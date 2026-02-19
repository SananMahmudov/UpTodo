import 'package:flutter/material.dart';
import 'package:up_todo/l10n/app_localizations.dart';
import 'package:up_todo/presentation/widgets/custom_primary_button.dart';
import 'package:up_todo/presentation/widgets/main_text_field.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';

class ChangeNameDialog extends StatelessWidget {
  const ChangeNameDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      backgroundColor: AppColors.darkGrey,
      title: Center(
        child: Text(l10n.accountName, style: TextStyle(color: AppColors.white)),
      ),
      content: SizedBox(
        height: 186,
        width: 360,
        child: Column(
          children: [
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 16),
            MainTextField(
              hintText: l10n.usernameExample,
              fillColor: AppColors.darkGrey,
            ),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                l10n.cancel,
                style: TextStyle(color: AppColors.buttonPrimary),
              ),
            ),
            CustomPrimaryButton(
              backgroundColor: AppColors.buttonPrimary,
              text: l10n.edit,
            ),
          ],
        ),
      ],
    );
  }
}
