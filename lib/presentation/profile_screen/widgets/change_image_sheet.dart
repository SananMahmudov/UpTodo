import 'package:flutter/material.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';
import 'package:up_todo/core/constants/constants/app_texts.dart';

class ChangeImageSheet extends StatelessWidget {
  const ChangeImageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4),
          topRight: Radius.circular(4),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 16),
          Text(
            AppTexts.newImage,
            style: TextStyle(color: AppColors.white, fontSize: 16),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Divider(),
          ),
          SizedBox(height: 16),
          ListTile(
            title: Text(
              AppTexts.takePicture,
              style: TextStyle(color: AppColors.white),
            ),
          ),
          ListTile(
            title: Text(
              AppTexts.importFromGallery,
              style: TextStyle(color: AppColors.white),
            ),
          ),
          ListTile(
            title: Text(
              AppTexts.importFromGoogleDrive,
              style: TextStyle(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
