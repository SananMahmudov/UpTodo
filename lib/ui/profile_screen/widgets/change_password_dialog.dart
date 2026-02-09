import 'package:flutter/material.dart';
import 'package:up_todo/ui/widgets/custom_primary_button.dart';
import 'package:up_todo/ui/widgets/main_text_field.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class ChangePasswordDialog extends StatelessWidget {
  const ChangePasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      backgroundColor: AppColors.darkGrey,
      title: Center(
        child: Text(
          AppTexts.accountPassword,
          style: TextStyle(color: AppColors.white),
        ),
      ),
      content: SizedBox(
        height: 220,
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 16),
            Text(
              AppTexts.oldPassword,
              style: TextStyle(color: AppColors.white, fontSize: 14),
            ),
            SizedBox(height: 8),
            MainTextField(
              isPassword: true,
              hintText: AppTexts.passwordHintText,
              fillColor: AppColors.darkGrey,
            ),
            SizedBox(height: 10),
            Text(
              AppTexts.newPassword,
              style: TextStyle(color: AppColors.white, fontSize: 14),
            ),
            SizedBox(height: 8),

            MainTextField(
              isPassword: true,
              hintText: AppTexts.passwordHintText,
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
                AppTexts.cancel,
                style: TextStyle(color: AppColors.buttonPrimary),
              ),
            ),
            CustomPrimaryButton(
              backgroundColor: AppColors.buttonPrimary,
              text: AppTexts.edit,
            ),
          ],
        ),
      ],
    );
  }
}
