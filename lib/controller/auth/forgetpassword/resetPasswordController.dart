import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/data_source/reomte/resetepassword.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/class/status_request.dart';
import '../../../core/constant/colors.dart';
import '../../../core/functions/handleErrors.dart';
import '../../../core/functions/handlingdata.dart';

abstract class Resetpasswordcontroller extends GetxController {
  save();
}

class ResetpasswordcontrollerImp extends Resetpasswordcontroller {
  late String email;
  late TextEditingController password;
  late TextEditingController repassword;
  StatusRequest? statusRequest;
  final ResetePasswordData _resetePasswordData = ResetePasswordData(Get.find());
  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    email = Get.arguments["email"];
    super.onInit();
  }

  @override
  void onClose() {
    password.dispose();
    repassword.dispose();
    super.onClose();
  }

  @override
  save() async {
    if (password.text != repassword.text) {
      statusRequest = StatusRequest.failure;
      return Get.defaultDialog(
          backgroundColor: AppColor.backgroundcolor,
          title: "Warning",
          middleText: "Password Not match");
    }
    statusRequest = StatusRequest.loading;
    update();
    var response = await _resetePasswordData.reset(email, password.text);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "success") {
        Get.offNamed(AppRoutes.successResetPassword);
      } else {
        Get.defaultDialog(
            backgroundColor: AppColor.backgroundcolor,
            title: "Warning",
            middleText: "Try again");
        statusRequest = StatusRequest.failure;
      }
    } else {
      handleErrors(statusRequest!);
    }
    update();
  }
}
