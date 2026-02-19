import 'package:flutter/material.dart';
import 'package:up_todo/presentation/create_category_screen/create_category_screen.dart';
import 'package:up_todo/presentation/home_screen/widgets/category_model.dart';
import 'package:up_todo/presentation/widgets/custom_primary_button.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';
import 'package:up_todo/core/constants/constants/app_texts.dart';

class TaskCategorySheet extends StatefulWidget {
  const TaskCategorySheet({super.key});

  @override
  State<TaskCategorySheet> createState() => _TaskCategorySheetState();
}

class _TaskCategorySheetState extends State<TaskCategorySheet> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Center(
          child: CustomPrimaryButton(
            text: AppTexts.addCategory,
            width: double.infinity,
          ),
        ),
      ],
      backgroundColor: AppColors.secondDarkGrey,
      title: Center(
        child: Text(
          AppTexts.chooseCategory,
          style: TextStyle(color: AppColors.white),
        ),
      ),
      content: SizedBox(
        width: 327,
        height: 556,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  
                });
                if (categories[index].title == "Create New") {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateCategoryScreen(),
                    ),
                  );
                } else {}
              },
              child: Container(
                decoration: BoxDecoration(
                  color: categories[index].color.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        categories[index].icon,
                        color: categories[index].color,
                        size: 24,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        maxLines: 1,
                        categories[index].title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
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
