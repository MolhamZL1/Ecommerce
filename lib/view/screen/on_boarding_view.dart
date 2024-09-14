import 'package:ecommerce/controller/on_boarding_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/shared/CustomElevatedButton.dart';
import '../../core/shared/CustomTextButton.dart';
import '../widget/CustomDotControllerOnBoarding.dart';
import '../widget/OnBoardingSlider.dart';

class OnBoardingView extends GetView<OnBoardingControllerImp> {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: OnBoardingSlider(),
            ),
            Expanded(
                child: Column(
              children: [
                const CustomDotControllerOnBoarding(),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: CustomElevatedButton(
                    text: "Continue",
                    onPressed: () {
                      controller.next();
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextButton(
                  text: "Skip",
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
