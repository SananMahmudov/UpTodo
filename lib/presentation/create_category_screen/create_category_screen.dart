import 'package:flutter/material.dart';
import 'package:up_todo/l10n/app_localizations.dart';
import 'package:up_todo/presentation/home_screen/widgets/category_model.dart';
import 'package:up_todo/presentation/widgets/custom_primary_button.dart';
import 'package:up_todo/presentation/widgets/main_text_field.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';


class CreateCategoryScreen extends StatelessWidget {
  const CreateCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    // final localeProvider = Provider.of<LocaleProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.createNewCategory,
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
                l10n.categoryName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 16),
              MainTextField(hintText: l10n.categoryName),
              SizedBox(height: 20),
              Text(
                l10n.categoryIcon,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 16),
              CustomPrimaryButton(
                backgroundColor: AppColors.darkGrey,
                text: l10n.chooseIconFromLibrary,
              ),
              SizedBox(height: 20),
              Text(
                l10n.categoryColor,
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
                      l10n.cancel,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  CustomPrimaryButton(text: l10n.createCategory),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
