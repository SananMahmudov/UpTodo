import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/ui/splash_screen/splash_screen.dart';
import 'package:up_todo/ui/splash_screen/widgets/splash_provider.dart';
import 'package:up_todo/utils/constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        appBarTheme: AppBarTheme(
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.backgroundColor,
        ),
      ),
      home: ChangeNotifierProvider(
        create: (context) => SplashProvider(),
        child: SplashScreen(),
      ),
    );
  }
}
