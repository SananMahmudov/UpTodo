
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: AppColors.darkGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    IconsaxPlusBold.home_2,
                    color: AppColors.white,
                    size: 24,
                  ),
                ),
                Text(
                  AppTexts.index,
                  style: TextStyle(color: AppColors.white, fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    IconsaxPlusLinear.calendar,
                    color: AppColors.white,
                    size: 24,
                  ),
                ),
                Text(
                  AppTexts.calendar,
                  style: TextStyle(color: AppColors.white, fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    IconsaxPlusLinear.user,
                    color: AppColors.white,
                    size: 24,
                  ),
                ),
                Text(
                  AppTexts.index,
                  style: TextStyle(color: AppColors.white, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
