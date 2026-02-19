import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/core/theme/app_theme.dart';
import 'package:up_todo/presentation/splash_screen/splash_screen.dart';
import 'package:up_todo/presentation/splash_screen/widgets/splash_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: ChangeNotifierProvider(
        create: (context) => SplashProvider(),
        child: SplashScreen(),
      ),
    );
  }
}
