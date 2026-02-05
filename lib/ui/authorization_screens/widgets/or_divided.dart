
import 'package:flutter/material.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class OrDivided extends StatelessWidget {
  const OrDivided({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: AppColors.lightGrey, thickness: 1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            AppTexts.or,
            style: TextStyle(
              color: AppColors.lightGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Divider(color: AppColors.lightGrey, thickness: 1),
        ),
      ],
    );
  }
}
