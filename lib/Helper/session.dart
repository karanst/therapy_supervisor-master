import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:therapy/Helper/string.dart';

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LAGUAGE_CODE) ?? "en";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case "en":
      return Locale("en", 'US');
    case "zh":
      return Locale("zh", "CN");
    case "es":
      return Locale("es", "ES");
    case "hi":
      return Locale("hi", "IN");
    case "ar":
      return Locale("ar", "DZ");
    case "ru":
      return Locale("ru", "RU");
    case "ja":
      return Locale("ja", "JP");
    case "de":
      return Locale("de", "DE");
    default:
      return Locale("en", 'US');
  }
}