import 'package:flutter/material.dart';
import 'package:up_todo/ui/home_screen/widgets/custom_bottom_nav_bar.dart';
import 'package:up_todo/ui/profile_screen/widgets/account_tiles.dart';
import 'package:up_todo/ui/profile_screen/widgets/setting_tile.dart';
import 'package:up_todo/ui/profile_screen/widgets/up_todo_tiles.dart';
import 'package:up_todo/ui/widgets/custom_primary_button.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppTexts.profile,
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
                      AppTexts.usernameExample,
                      style: TextStyle(color: AppColors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomPrimaryButton(
                        width: 154,
                        height: 58,
                        backgroundColor: AppColors.darkGrey,
                        text: AppTexts.tasksLeft,
                      ),
                      CustomPrimaryButton(
                        width: 154,
                        height: 58,
                        backgroundColor: AppColors.darkGrey,
                        text: AppTexts.tasksDone,
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    AppTexts.settings,
                    style: TextStyle(color: AppColors.grey, fontSize: 16),
                  ),
                  SettingTile(),
                  SizedBox(height: 16),
                  Text(
                    AppTexts.account,
                    style: TextStyle(color: AppColors.grey, fontSize: 16),
                  ),
                  AccountTiles(),
                  Text(
                    AppTexts.upTodo,
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
