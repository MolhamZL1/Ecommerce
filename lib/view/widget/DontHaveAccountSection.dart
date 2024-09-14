import 'package:ecommerce/controller/auth/signinController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/colors.dart';
import '../../core/shared/CustomTextButton.dart';

class DontHaveAccountSection extends GetView<SignInControllerImp> {
  const DontHaveAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          textAlign: TextAlign.end,
          style: TextStyle(color: AppColor.grey),
        ),
        CustomTextButton(
          text: " Sign Up",
          onTap: controller.goToSighUp,
        )
      ],
    );
  }
}
