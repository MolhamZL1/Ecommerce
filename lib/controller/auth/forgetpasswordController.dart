import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Forgetpasswordcontroller extends GetxController {
  check();
}

class ForgetpasswordcontrollerImp extends Forgetpasswordcontroller {
  late TextEditingController email;
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
  check() {
    Get.toNamed(AppRoutes.verifycodepassword);
  }
}
