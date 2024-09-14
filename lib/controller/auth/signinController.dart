import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignInController extends GetxController {
  signin();
  goToSighUp();
  goToForgetPassword();
}

class SignInControllerImp extends SignInController {
  late TextEditingController email;
  late TextEditingController password;
  late GlobalKey<FormState> formState;
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
  signin() {
    if (formState.currentState!.validate()) {
    } else {}
  }
}
