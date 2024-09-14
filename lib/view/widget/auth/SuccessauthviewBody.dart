import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/routes.dart';
import 'CustomAuthButton.dart';
import 'CustomBodyTextAuth.dart';
import 'CustomTextTitleAuth.dart';

class SuccessPasswordviewBody extends StatelessWidget {
  const SuccessPasswordviewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        children: [
          const Icon(
            Icons.check_circle_outline,
            color: AppColor.primaryColor,
            size: 128,
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomTextTitleAuth(text: "Congratulations"),
          const SizedBox(
            height: 16,
          ),
          const CustomBodyTextAuth(text: "Your Password Changed Succesfuly"),
          const Spacer(),
          CustomAuthButton(
              text: "Go To Login",
              onPressed: () {
                Get.offAllNamed(AppRoutes.login);
              })
        ],
      ),
    );
  }
}
