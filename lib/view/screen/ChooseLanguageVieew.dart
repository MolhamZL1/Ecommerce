import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/localization/locale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/ChooseLanguageVieewBody.dart';

class ChooseLanguageVieew extends GetView<LocaleController> {
  const ChooseLanguageVieew({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: ChooseLanguageVieewBody(),
    );
  }
}
