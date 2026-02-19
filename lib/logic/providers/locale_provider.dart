import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  // Выбери один основной язык по умолчанию
  Locale _locale = const Locale('en'); 

  Locale get locale => _locale;

  // Список поддерживаемых языков (должен совпадать с тем, что в MaterialApp)
  static final all = [
    const Locale('en'),
    const Locale('ru'),
    const Locale('az'),
  ];

  void setLocale(Locale locale) {
    // Проверка: если мы пытаемся поставить язык, которого нет в списке, ничего не делаем
    if (!all.contains(locale)) return;

    _locale = locale;
    notifyListeners(); 
  }

  // Метод для быстрой очистки (сброса) языка, если понадобится
  void clearLocale() {
    _locale = const Locale('en');
    notifyListeners();
  }
}