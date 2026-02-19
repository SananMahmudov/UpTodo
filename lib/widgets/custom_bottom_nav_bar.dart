import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/l10n/app_localizations.dart';
import 'package:up_todo/presentation/home_screen/home_screen.dart';
import 'package:up_todo/presentation/profile_screen/profile_screen.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, this.onPressed});

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    IconsaxPlusBold.home_2,
                    color: AppColors.white,
                    size: 24,
                  ),
                ),
                Text(
                  l10n.index,
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
                  l10n.calendar,
                  style: TextStyle(color: AppColors.white, fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    IconsaxPlusLinear.user,
                    color: AppColors.white,
                    size: 24,
                  ),
                ),
                Text(
                  l10n.profile,
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
