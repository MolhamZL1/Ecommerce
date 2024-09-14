import 'package:ecommerce/controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/colors.dart';
import '../../data/data_source/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          onBoardingList.length,
          (index) => AnimatedContainer(
            margin: const EdgeInsets.only(right: 5),
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10)),
            height: 6,
            width: controller.currentPage == index ? 20 : 6,
          ),
        ),
      );
    });
  }
}
