import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/presentation/authorization_screens/login_screen/login_screen.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';
import 'package:up_todo/core/constants/constants/app_texts.dart';

class UpTodoTiles extends StatelessWidget {
  const UpTodoTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(IconsaxPlusLinear.menu_1, color: AppColors.white),
          title: Text(
            AppTexts.aboutUs,
            style: TextStyle(color: AppColors.white, fontSize: 16),
          ),
          trailing: Icon(
            IconsaxPlusLinear.arrow_right_3,
            color: AppColors.white,
            size: 16,
          ),
        ),
        ListTile(
          leading: Icon(IconsaxPlusLinear.info_circle, color: AppColors.white),
          title: Text(
            AppTexts.faq,
            style: TextStyle(color: AppColors.white, fontSize: 16),
          ),
          trailing: Icon(
            IconsaxPlusLinear.arrow_right_3,
            color: AppColors.white,
            size: 16,
          ),
        ),
        ListTile(
          leading: Icon(IconsaxPlusLinear.flash_1, color: AppColors.white),
          title: Text(
            AppTexts.helpFeedback,
            style: TextStyle(color: AppColors.white, fontSize: 16),
          ),
          trailing: Icon(
            IconsaxPlusLinear.arrow_right_3,
            color: AppColors.white,
            size: 16,
          ),
        ),
        ListTile(
          leading: Icon(IconsaxPlusLinear.like_1, color: AppColors.white),
          title: Text(
            AppTexts.supportUs,
            style: TextStyle(color: AppColors.white, fontSize: 16),
          ),
          trailing: Icon(
            IconsaxPlusLinear.arrow_right_3,
            color: AppColors.white,
            size: 16,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: ListTile(
            leading: Icon(IconsaxPlusLinear.logout, color: AppColors.redError),
            title: Text(
              AppTexts.logOut,
              style: TextStyle(color: AppColors.redError, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
