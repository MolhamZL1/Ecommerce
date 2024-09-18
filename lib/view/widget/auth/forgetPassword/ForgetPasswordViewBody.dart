import 'package:ecommerce/core/functions/validInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../controller/auth/forgetpassword/forgetpasswordController.dart';
import '../CustomAuthButton.dart';
import '../CustomAuthTextFormField.dart';
import 'HeadForgetPasswordSection.dart';

class ForgetPasswordViewBody extends GetView<ForgetpasswordcontrollerImp> {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      children: [
        const HeadForgetPasswordSection(),
        CustomAuthTextFormField(
          controller: controller.email,
          hintText: "Enter Your Email",
          labelText: "Email",
          validator: (val) => validInput(val!, 5, 30, "email"),
          iconData: Icons.email_outlined,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomAuthButton(
          text: "Send",
          onPressed: controller.check,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
