import 'package:ecommerce/core/constant/appTheame.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  late Locale language;
  MyServices myServices = Get.find();
  ThemeData themeApp = themeEnglish;
  @override
  void onInit() {
    String? sharedPrefLanguage =
        myServices.sharedPreferences.getString("language");
    if (sharedPrefLanguage == MyTranslation.arabic) {
      language = const Locale(MyTranslation.arabic);
      themeApp = themeArabic;
    } else if (sharedPrefLanguage == MyTranslation.english) {
      language = const Locale(MyTranslation.english);
      themeApp = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      Get.deviceLocale!.languageCode == "ar"
          ? themeApp = themeArabic
          : themeApp = themeEnglish;
    }
    super.onInit();
  }

  changeLanguage(String langCode) {
    language = Locale(langCode);
    myServices.sharedPreferences.setString("language", langCode);
    Get.updateLocale(language);
    langCode == "ar" ? themeApp = themeArabic : themeApp = themeEnglish;
    Get.changeTheme(themeApp);
  }
}
