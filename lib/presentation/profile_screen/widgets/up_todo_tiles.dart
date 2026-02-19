import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/l10n/app_localizations.dart';
import 'package:up_todo/presentation/authorization_screens/login_screen/login_screen.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';


class UpTodoTiles extends StatelessWidget {
  const UpTodoTiles({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        ListTile(
          leading: Icon(IconsaxPlusLinear.menu_1, color: AppColors.white),
          title: Text(
            l10n.aboutUs,
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
            l10n.faq,
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
            l10n.helpFeedback,
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
            l10n.supportUs,
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
              l10n.logOut,
              style: TextStyle(color: AppColors.redError, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
