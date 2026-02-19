import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/presentation/widgets/custom_primary_button.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';
import 'package:up_todo/core/constants/constants/app_texts.dart';

class TaskPriorityExample extends StatefulWidget {
  const TaskPriorityExample({super.key});

  @override
  State<TaskPriorityExample> createState() => _TaskPriorityExampleState();
}

class _TaskPriorityExampleState extends State<TaskPriorityExample> {
  int? _selectedPriority;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                AppTexts.cancel,
                style: TextStyle(color: AppColors.buttonPrimary, fontSize: 16),
              ),
            ),
            CustomPrimaryButton(
              text: AppTexts.save,
              onPressed: () => Navigator.of(context).pop(_selectedPriority),
            ),
          ],
        ),
      ],
      backgroundColor: AppColors.secondDarkGrey,
      title: Center(
        child: Text(
          AppTexts.taskPriority,
          style: TextStyle(color: AppColors.white),
        ),
      ),
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
            final isSelected = _selectedPriority == number;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedPriority = number;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.buttonPrimary : AppColors.darkGrey,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        IconsaxPlusLinear.flag,
                        color: Colors.white,
                        size: 24,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        number.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
