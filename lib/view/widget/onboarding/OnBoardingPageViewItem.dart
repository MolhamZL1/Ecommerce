import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/on_boarding_model.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required this.onBoardingModel,
  });
  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Image.asset(
          onBoardingModel.image,
          height: Get.width * .9,
          fit: BoxFit.fill,
        ),
        const Spacer(),
        Text(
          onBoardingModel.title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          onBoardingModel.body,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
