import 'package:ecommerce/controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/data_source/static/static.dart';
import 'OnBoardingPageViewItem.dart';

class OnBoardingSlider extends GetView<OnBoardingControllerImp> {
  const OnBoardingSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) => controller.onPageChanged(value),
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => OnBoardingPageViewItem(
        onBoardingModel: onBoardingList[index],
      ),
    );
  }
}
