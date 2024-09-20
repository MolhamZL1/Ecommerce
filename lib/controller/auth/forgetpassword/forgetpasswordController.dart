import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/data_source/reomte/auth/forget_password_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/class/status_request.dart';
import '../../../core/constant/colors.dart';
import '../../../core/functions/handleErrors.dart';
import '../../../core/functions/handlingdata.dart';
import '../../../core/shared/CustomTextButton.dart';
import '../../../view/widget/auth/CustomAuthButton.dart';

abstract class Forgetpasswordcontroller extends GetxController {
  check();
}

class ForgetpasswordcontrollerImp extends Forgetpasswordcontroller {
  late TextEditingController email;
  late GlobalKey<FormState> formState;
  StatusRequest? statusRequest;
  final ForgetPasswordData _forgetPasswordData = ForgetPasswordData(Get.find());

  @override
  void onInit() {
    email = TextEditingController();
    formState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    super.onClose();
  }

  @override
  check() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response =
          await _forgetPasswordData.sendPasswordResetEmail(email.text);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        Get.defaultDialog(
            backgroundColor: AppColor.backgroundcolor,
            title: "Resete Password",
            middleText: "Check your email for a link to reset your password.",
            actions: [
              CustomAuthButton(
                text: "Go to Login",
                onPressed: () {
                  Get.offAllNamed(AppRoutes.login);
                },
              ),
              CustomTextButton(
                text: "Cancle",
                onTap: () {
                  Get.back();
                },
              )
            ]);
      } else if (statusRequest == StatusRequest.failure) {
        Get.defaultDialog(
            backgroundColor: AppColor.backgroundcolor,
            title: "Warning",
            middleText: "Email is not exist");
        statusRequest = StatusRequest.failure;
      } else {
        handleErrors(statusRequest!);
      }
      update();
    } else {}
  }
}
