import 'package:ecommerce/controller/auth/signinController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/validInput.dart';
import 'CustomAuthTextFormField.dart';

class TextFieldsLoginSection extends GetView<SignInControllerImp> {
  const TextFieldsLoginSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formState,
      child: Column(
        children: [
          CustomAuthTextFormField(
            controller: controller.email,
            hintText: "Enter Your Email",
            validator: (val) => validInput(val!, 5, 30, "email"),
            labelText: "Email",
            iconData: Icons.email_outlined,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomAuthTextFormField(
            controller: controller.password,
            hintText: "Enter Your Password",
            validator: (val) => validInput(val!, 8, 30, "password"),
            labelText: "Password",
            iconData: Icons.lock_outline,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
