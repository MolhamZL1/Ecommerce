import 'package:ecommerce/controller/auth/signinController.dart';
import 'package:ecommerce/controller/auth/signupController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CustomAuthButton.dart';
import 'HaveAnAcountSection.dart';
import 'HeadSignUpSection.dart';
import 'TextFieldSignUpSection.dart';

class SignUpViewBody extends GetView<SignUpController> {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      children: [
        const HeadSignUpSection(),
        const TextFieldSignUpSection(),
        CustomAuthButton(
          text: "Sign Up",
          onPressed: controller.signUp,
        ),
        const SizedBox(
          height: 20,
        ),
        const HaveAnAcountSection()
      ],
    );
  }
}
