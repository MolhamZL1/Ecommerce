import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  @override
  signUp() {
    if (formState.currentState!.validate()) {
      Get.toNamed(AppRoutes.verifycodeEmail);
    } else {}
  }
}
