import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(IconsaxPlusLinear.setting_2, color: AppColors.white),
      title: Text(
        AppTexts.appSettings,
        style: TextStyle(color: AppColors.white, fontSize: 16),
      ),
      trailing: Icon(
        IconsaxPlusLinear.arrow_right_3,
        color: AppColors.white,
        size: 16,
      ),
    );
  }
}
