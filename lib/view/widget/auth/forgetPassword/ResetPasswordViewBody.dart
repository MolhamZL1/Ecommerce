import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../controller/auth/forgetpassword/resetPasswordController.dart';
import '../../../../core/functions/validInput.dart';
import '../CustomAuthButton.dart';
import '../CustomAuthTextFormField.dart';
import '../CustomBodyTextAuth.dart';
import '../CustomTextTitleAuth.dart';

class ResetPasswordViewBody extends GetView<ResetpasswordcontrollerImp> {
  const ResetPasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: Column(
        children: [
          const CustomTextTitleAuth(text: "New Password"),
          const SizedBox(
            height: 16,
          ),
          const CustomBodyTextAuth(text: "Please Enter Your New Password"),
          const SizedBox(
            height: 32,
          ),
          CustomAuthTextFormField(
              hintText: "Enter Your Password",
              labelText: "Password",
              validator: (val) => validInput(val!, 8, 50, "password"),
              controller: controller.password,
              iconData: Icons.lock_outline),
          const SizedBox(
            height: 32,
          ),
          CustomAuthTextFormField(
              hintText: "Re Enter Your Password",
              labelText: "RePassword",
              validator: (val) {
                validInput(val!, 8, 50, "password");
                if (controller.password != controller.repassword) {
                  return "Password Not the same";
                } else {
                  return "";
                }
              },
              controller: controller.repassword,
              iconData: Icons.lock_outline),
          const Spacer(),
          CustomAuthButton(
            text: "Save",
            onPressed: controller.save,
          ),
        ],
      ),
    );
  }
}
