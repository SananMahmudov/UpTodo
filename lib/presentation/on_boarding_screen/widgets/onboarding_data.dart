import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_todo/core/constants/constants/app_assets.dart';
import 'package:up_todo/l10n/app_localizations.dart';

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
// В файле с моделью (или там, где у тебя лежит список):
List<OnBoardingModel> getOnBoardingList(BuildContext context) {
  final l10n = AppLocalizations.of(context)!;

  return [
    OnBoardingModel(
      image: SvgPicture.asset(AppAssets.firstOnBoarding),
      title: l10n.manageYourTasks,
      subTitle: l10n.manageYourTasksSubText,
    ),
    OnBoardingModel(
      image: SvgPicture.asset(AppAssets.secondOnBoarding),
      title: l10n.createDailyRoutine,
      subTitle: l10n.createDailyRoutineSub,
    ),
    OnBoardingModel(
      image: SvgPicture.asset(AppAssets.lastOnBoarding),
      title: l10n.organizeYourTasks,
      subTitle: l10n.organizeYourTasksSub,
    ),
  ];
}
