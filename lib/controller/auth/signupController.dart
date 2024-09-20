import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/core/shared/CustomTextButton.dart';
import 'package:ecommerce/view/widget/auth/CustomAuthButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/functions/handleErrors.dart';
import '../../data/data_source/reomte/auth/signUp.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSighIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController email;
  late TextEditingController phoneNumber;
  late TextEditingController userName;
  late TextEditingController password;
  late GlobalKey<FormState> formState;
  StatusRequest? statusRequest;
  final SignUpData _signUpData = SignUpData(Get.find());

  @override
  signUp() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await _signUpData.signUp(
          userName.text, email.text, password.text, phoneNumber.text);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        Get.defaultDialog(
            backgroundColor: AppColor.backgroundcolor,
            title: "verification",
            middleText:
                "we sent you a verfication link to your email \n verify then login",
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
          middleText: "Email is already in use Or password is weak",
        );
      } else {
        handleErrors(statusRequest!);
      }
      update();
    } else {}
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    userName = TextEditingController();
    phoneNumber = TextEditingController();
    formState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void onClose() {
    userName.dispose();
    phoneNumber.dispose();
    email.dispose();
    password.dispose();
    super.onClose();
  }

  @override
  goToSighIn() {
    Get.back();
  }
}
