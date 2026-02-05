import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class TaskPriorityExample extends StatelessWidget {
  const TaskPriorityExample({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.secondDarkGrey,
      title: Center(child: Text(AppTexts.taskPriority)),
      content: SizedBox(
        width: 320,
        height: 360,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: 16,
          itemBuilder: (context, index) {
            final number = index + 1;
            return Container(
              decoration: BoxDecoration(
                color: AppColors.darkGrey,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      IconsaxPlusLinear.flag,
                      color: AppColors.white,
                      size: 24,
                    ),
                    Text(
                      number.toString(),
                      style: TextStyle(color: AppColors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
            // return GestureDetector(
            //   onTap: () {
            //     Navigator.of(context).pop(priority);
            //   },
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.grey[300],
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     alignment: Alignment.center,
            //     child: Text(
            //       priority.toString(),
            //       style: const TextStyle(fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
