import 'package:ecommerce/controller/auth/signinController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
import 'CustomAuthButton.dart';
import '../DontHaveAccountSection.dart';
import 'HeadLoginSection.dart';
import 'TextFieldsLoginSection.dart';

class LoginViewBody extends GetView<SignInControllerImp> {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      children: [
        const HeadLoginSection(),
        const TextFieldsLoginSection(),
        GestureDetector(
            onTap: controller.goToForgetPassword,
            child: const Text(
              "Forget Password",
              textAlign: TextAlign.end,
              style: TextStyle(color: AppColor.grey),
            )),
        const SizedBox(
          height: 10,
        ),
        CustomAuthButton(
          text: "Sign In",
          onPressed: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        const DontHaveAccountSection()
      ],
    );
  }
}
