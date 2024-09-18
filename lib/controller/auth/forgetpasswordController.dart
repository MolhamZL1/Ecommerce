import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/data_source/reomte/forget_password_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/constant/colors.dart';
import '../../core/functions/handleErrors.dart';
import '../../core/functions/handlingdata.dart';

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
      var response = await _forgetPasswordData.checkEmail(email.text);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response["status"] == "success") {
          Get.offNamed(AppRoutes.verifycodepassword,
              arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              backgroundColor: AppColor.backgroundcolor,
              title: "Warning",
              middleText: "Email is not exist");
          statusRequest = StatusRequest.failure;
        }
      } else {
        handleErrors(statusRequest!);
      }
      update();
    } else {}
  }
}
