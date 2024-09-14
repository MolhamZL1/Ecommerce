import 'package:ecommerce/controller/auth/signupController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
import '../../../core/shared/CustomTextButton.dart';

class HaveAnAcountSection extends GetView<SignUpControllerImp> {
  const HaveAnAcountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "have an account?",
          textAlign: TextAlign.end,
          style: TextStyle(color: AppColor.grey),
        ),
        CustomTextButton(
          text: " Sign In",
          onTap: controller.goToSighIn,
        )
      ],
    );
  }
}
