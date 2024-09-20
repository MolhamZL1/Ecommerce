import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/shared/CustomTextButton.dart';
import 'package:ecommerce/data/data_source/reomte/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/constant/colors.dart';
import '../../core/functions/handleErrors.dart';
import '../../core/functions/handlingdata.dart';

abstract class SignInController extends GetxController {
  signin();
  goToSighUp();
  goToForgetPassword();
}

class SignInControllerImp extends SignInController {
  late TextEditingController email;
  late TextEditingController password;
  late GlobalKey<FormState> formState;
  StatusRequest? statusRequest;
  final LoginData _loginData = LoginData(Get.find());
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    formState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }

  @override
  goToSighUp() {
    Get.toNamed(AppRoutes.signUp);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }

  @override
  signin() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await _loginData.login(email.text, password.text);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        Get.offAllNamed(AppRoutes.homeView);
      } else if (statusRequest == StatusRequest.failure) {
        Get.defaultDialog(
          backgroundColor: AppColor.backgroundcolor,
          title: "Warning",
          middleText: "Email Or password is incorrect",
        );
      } else if (statusRequest == StatusRequest.serverfailure) {
        Get.defaultDialog(
            backgroundColor: AppColor.backgroundcolor,
            title: "Warning",
            middleText: "verify your Email First",
            actions: [
              CustomTextButton(
                text: "Ok",
                onTap: () {
                  Get.back();
                },
              )
            ]);
      } else {
        handleErrors(statusRequest!);
      }
      update();
    } else {}
  }
}
