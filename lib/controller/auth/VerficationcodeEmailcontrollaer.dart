import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/data_source/reomte/auth/verfycodeSignUp.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/constant/colors.dart';
import '../../core/functions/handleErrors.dart';
import '../../core/functions/handlingdata.dart';

abstract class VerficationcodeEmailcontrollaer extends GetxController {
  onComplete(String code);
}

class VerficationcodeEmailcontrollaerImp
    extends VerficationcodeEmailcontrollaer {
  StatusRequest? statusRequest;
  final VerfyCodeSignUpData _verfyCodeData = VerfyCodeSignUpData(Get.find());
  late String email;
  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }

  @override
  onComplete(String code) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await _verfyCodeData.verifyCode(email, code);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "success") {
        Get.offNamed(AppRoutes.successRegisteration);
      } else {
        Get.defaultDialog(
            backgroundColor: AppColor.backgroundcolor,
            title: "Warning",
            middleText: "verify code is incorrect");
        statusRequest = StatusRequest.failure;
      }
    } else {
      handleErrors(statusRequest!);
    }
    update();
  }
}
