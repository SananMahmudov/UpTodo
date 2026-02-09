import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/ui/widgets/custom_primary_button.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class TaskInfoScreen extends StatelessWidget {
  const TaskInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 56,
            margin: const EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              color: AppColors.inputColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                IconsaxPlusLinear.close_circle,
                color: AppColors.white,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.inputColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(IconsaxPlusLinear.repeat, color: AppColors.white),
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          IconsaxPlusLinear.tick_circle,
                          color: AppColors.white,
                        ),
                      ),
                      title: Text(
                        'Do Math Homework',
                        style: TextStyle(color: AppColors.white, fontSize: 20),
                      ),

                      subtitle: Text(
                        'Do chapter 2 to 5 for next week',
                        style: TextStyle(color: AppColors.grey, fontSize: 16),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          IconsaxPlusLinear.edit_2,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 36),
                  ListTile(
                    leading: Icon(
                      IconsaxPlusLinear.timer_1,
                      color: AppColors.white,
                    ),
                    title: Text(
                      AppTexts.taskTime,
                      style: TextStyle(color: AppColors.white, fontSize: 16),
                    ),
                    trailing: CustomPrimaryButton(
                      text: 'Today At 16:45',
                      backgroundColor: AppColors.secondDarkGrey,
                    ),
                  ),
                  SizedBox(height: 30),
                  ListTile(
                    leading: Icon(
                      IconsaxPlusLinear.tag,
                      color: AppColors.white,
                    ),
                    title: Text(
                      AppTexts.taskCategory,
                      style: TextStyle(color: AppColors.white, fontSize: 16),
                    ),
                    trailing: CustomPrimaryButton(
                      text: 'Works',
                      backgroundColor: AppColors.secondDarkGrey,
                    ),
                  ),
                  SizedBox(height: 30),
                  ListTile(
                    leading: Icon(
                      IconsaxPlusLinear.flag,
                      color: AppColors.white,
                    ),
                    title: Text(
                      AppTexts.taskPriority,
                      style: TextStyle(color: AppColors.white, fontSize: 16),
                    ),
                    trailing: CustomPrimaryButton(
                      text: AppTexts.defaultText,
                      backgroundColor: AppColors.secondDarkGrey,
                    ),
                  ),
                  SizedBox(height: 30),
                  ListTile(
                    leading: Icon(
                      IconsaxPlusLinear.hierarchy,
                      color: AppColors.white,
                    ),
                    title: Text(
                      AppTexts.subTask,
                      style: TextStyle(color: AppColors.white, fontSize: 16),
                    ),
                    trailing: CustomPrimaryButton(
                      text: AppTexts.addSubText,
                      backgroundColor: AppColors.secondDarkGrey,
                    ),
                  ),
                  SizedBox(height: 30),
                  ListTile(
                    leading: Icon(
                      IconsaxPlusLinear.trash,
                      color: AppColors.redError,
                    ),
                    title: Text(
                      AppTexts.deleteTask,
                      style: TextStyle(color: AppColors.redError, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomPrimaryButton(
                height: 48,
                width: double.infinity,
                text: AppTexts.editTask,
                backgroundColor: AppColors.buttonPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
