import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/core/theme/app_theme.dart';
import 'package:up_todo/l10n/app_localizations.dart';
import 'package:up_todo/logic/providers/locale_provider.dart';
import 'package:up_todo/presentation/splash_screen/splash_screen.dart';
import 'package:up_todo/presentation/splash_screen/widgets/splash_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final locale = Provider.of<LocaleProvider>(context).locale;
    return MaterialApp(
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: ChangeNotifierProvider(
        create: (context) => SplashProvider(),
        child: SplashScreen(),
      ),
    );
  }
}
