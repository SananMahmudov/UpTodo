import 'package:flutter/material.dart';
import 'package:up_todo/ui/home_screen/widgets/category_model.dart';
import 'package:up_todo/ui/widgets/custom_primary_button.dart';
import 'package:up_todo/ui/widgets/main_text_field.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class CreateCategoryScreen extends StatelessWidget {
  const CreateCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.createNewCategory,
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTexts.categoryName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 16),
              MainTextField(hintText: AppTexts.categoryName),
              SizedBox(height: 20),
              Text(
                AppTexts.categoryIcon,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 16),
              CustomPrimaryButton(
                backgroundColor: AppColors.darkGrey,
                text: AppTexts.chooseIconFromLibrary,
              ),
              SizedBox(height: 20),
              Text(
                AppTexts.categoryColor,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 36,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: categories[index].color,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      AppTexts.cancel,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  CustomPrimaryButton(text: AppTexts.createCategory),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
