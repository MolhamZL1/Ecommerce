import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/data/data_source/reomte/signUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/functions/handleErrors.dart';

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
        if (response["status"] == "success") {
          Get.offNamed(AppRoutes.verifycodeEmail,
              arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              backgroundColor: AppColor.backgroundcolor,
              title: "Warning",
              middleText: "Phone Number Or Email already exist");
          statusRequest = StatusRequest.failure;
        }
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
