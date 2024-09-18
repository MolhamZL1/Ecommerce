import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/data_source/reomte/login.dart';
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
        if (response["status"] == "success") {
          Get.offAllNamed(
            AppRoutes.homeView,
          );
        } else {
          Get.defaultDialog(
              backgroundColor: AppColor.backgroundcolor,
              title: "Warning",
              middleText: "Email or Password is incorrect");
          statusRequest = StatusRequest.failure;
        }
      } else {
        handleErrors(statusRequest!);
      }
      update();
    } else {}
  }
}
