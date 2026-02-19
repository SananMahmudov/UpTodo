import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    textTheme: GoogleFonts.latoTextTheme(),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.backgroundColor,
    ),
  );
}
