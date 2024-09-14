import 'package:get/get.dart';

class MyTranslation extends Translations {
  static const String arabic = "ar";
  static const String english = "en";
  @override
  Map<String, Map<String, String>> get keys => {
        arabic: arabicTitles,
        english: englishTitles,
      };
  Map<String, String> get arabicTitles => {
        TitlesLanguage.chooseLanguage: "اختر اللغة",
        TitlesLanguage.arabic: "العربية",
        TitlesLanguage.english: "الانكليزية",
      };
  Map<String, String> get englishTitles => {
        TitlesLanguage.chooseLanguage: "Choose Language",
        TitlesLanguage.arabic: "Arabic",
        TitlesLanguage.english: "English",
      };
}

abstract class TitlesLanguage {
  static const String chooseLanguage = "Choose Language";
  static const String arabic = "Arabic";
  static const String english = "English";
}
