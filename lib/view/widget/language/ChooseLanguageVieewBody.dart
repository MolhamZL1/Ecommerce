import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/image_assets.dart';
import '../../core/constant/routes.dart';
import '../../core/localization/locale.dart';
import '../../core/localization/translation.dart';
import 'language/ChooseLanguageItem.dart';

class ChooseLanguageVieewBody extends GetView<LocaleController> {
  const ChooseLanguageVieewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "1".tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ChooseLanguageItem(
              text: "English",
              image: AppImageAsset.usaFlag,
              onTap: () {
                controller.changeLanguage(MyTranslation.english);
                Get.toNamed(AppRoutes.onBoardingView);
              },
            ),
            ChooseLanguageItem(
              text: "العربية",
              image: AppImageAsset.ksaFlag,
              onTap: () {
                controller.changeLanguage(MyTranslation.arabic);
                Get.toNamed(AppRoutes.onBoardingView);
              },
            ),
          ],
        )
      ],
    );
  }
}
