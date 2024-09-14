import 'package:ecommerce/controller/auth/signupController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/validInput.dart';
import 'CustomAuthTextFormField.dart';

class TextFieldSignUpSection extends GetView<SignUpControllerImp> {
  const TextFieldSignUpSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAuthTextFormField(
          controller: controller.userName,
          validator: (val) => validInput(val!, 5, 30, "username"),
          hintText: "Enter Your Name",
          labelText: "Name",
          iconData: Icons.person_2_outlined,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomAuthTextFormField(
          controller: controller.phoneNumber,
          hintText: "Enter Your Phone Number",
          validator: (val) => validInput(val!, 5, 15, "phone"),
          labelText: "Phone Number",
          iconData: Icons.phone_outlined,
        ),
        const SizedBox(
          height: 20,
        ),
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
          height: 40,
        ),
      ],
    );
  }
}
