import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/ui/profile_screen/widgets/change_image_sheet.dart';
import 'package:up_todo/ui/profile_screen/widgets/change_name_dialog.dart';
import 'package:up_todo/ui/profile_screen/widgets/change_password_dialog.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class AccountTiles extends StatelessWidget {
  const AccountTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return ChangeNameDialog();
              },
            );
          },
          child: ListTile(
            leading: Icon(IconsaxPlusLinear.user, color: AppColors.white),
            title: Text(
              AppTexts.accountName,
              style: TextStyle(color: AppColors.white, fontSize: 16),
            ),
            trailing: Icon(
              IconsaxPlusLinear.arrow_right_3,
              color: AppColors.white,
              size: 16,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return ChangePasswordDialog();
              },
            );
          },
          child: ListTile(
            leading: Icon(IconsaxPlusLinear.key, color: AppColors.white),
            title: Text(
              AppTexts.accountPassword,
              style: TextStyle(color: AppColors.white, fontSize: 16),
            ),
            trailing: Icon(
              IconsaxPlusLinear.arrow_right_3,
              color: AppColors.white,
              size: 16,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return ChangeImageSheet();
              },
            );
          },
          child: ListTile(
            leading: Icon(IconsaxPlusLinear.camera, color: AppColors.white),
            title: Text(
              AppTexts.accountImage,
              style: TextStyle(color: AppColors.white, fontSize: 16),
            ),
            trailing: Icon(
              IconsaxPlusLinear.arrow_right_3,
              color: AppColors.white,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
