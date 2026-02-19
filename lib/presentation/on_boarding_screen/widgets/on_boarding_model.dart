import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_todo/core/constants/constants/app_assets.dart';
import 'package:up_todo/core/constants/constants/app_texts.dart';

class OnBoardingModel {
  final Widget image;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

final List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    image: SvgPicture.asset(AppAssets.firstOnBoarding),
    title: AppTexts.manageYourTasks,
    subTitle: AppTexts.manageYourTasksSubText,
  ),
  OnBoardingModel(
    image: SvgPicture.asset(AppAssets.secondOnBoarding),
    title: AppTexts.createDailyRoutine,
    subTitle: AppTexts.createDailyRoutineSub,
  ),
  OnBoardingModel(
    image: SvgPicture.asset(AppAssets.lastOnBoarding),
    title: AppTexts.organizeYourTasks,
    subTitle: AppTexts.organizeYourTasksSub,
  ),
];