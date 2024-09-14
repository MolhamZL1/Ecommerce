import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class Resetpasswordcontroller extends GetxController {
  save();
}

class ResetpasswordcontrollerImp extends Resetpasswordcontroller {
  late TextEditingController password;
  late TextEditingController repassword;
  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    password.dispose();
    repassword.dispose();
    super.onClose();
  }

  @override
  save() {
    Get.offNamed(AppRoutes.successResetPassword);
  }
}
