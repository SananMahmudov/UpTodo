import 'package:flutter/material.dart';
import 'package:up_todo/l10n/app_localizations.dart';
import 'package:up_todo/widgets/custom_bottom_nav_bar.dart';
import 'package:up_todo/presentation/profile_screen/widgets/account_tiles.dart';
import 'package:up_todo/presentation/profile_screen/widgets/setting_tile.dart';
import 'package:up_todo/presentation/profile_screen/widgets/up_todo_tiles.dart';
import 'package:up_todo/presentation/widgets/custom_primary_button.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.profile,
          style: TextStyle(color: AppColors.white, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  CircleAvatar(radius: 70),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      l10n.usernameExample,
                      style: TextStyle(color: AppColors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomPrimaryButton(
                        width: 154,
                        height: 70,
                        backgroundColor: AppColors.darkGrey,
                        text: l10n.tasksLeft,
                      ),
                      CustomPrimaryButton(
                        width: 154,
                        height: 70,
                        backgroundColor: AppColors.darkGrey,
                        text: l10n.tasksDone,
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    l10n.settings,
                    style: TextStyle(color: AppColors.grey, fontSize: 16),
                  ),
                  SettingTile(),
                  SizedBox(height: 16),
                  Text(
                    l10n.account,
                    style: TextStyle(color: AppColors.grey, fontSize: 16),
                  ),
                  AccountTiles(),
                  Text(
                    l10n.upTodo,
                    style: TextStyle(color: AppColors.grey, fontSize: 16),
                  ),
                  UpTodoTiles(),
                ],
              ),
            ),
          ),
          CustomBottomNavBar(),
        ],
      ),
    );
  }
}
