import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/data_source/reomte/verfy_Code_password.dart';
import 'package:get/get.dart';

import '../../../core/class/status_request.dart';
import '../../../core/constant/colors.dart';
import '../../../core/functions/handleErrors.dart';
import '../../../core/functions/handlingdata.dart';

abstract class VerficationcodePasswordcontrollaer extends GetxController {
  onComplete(String code);
}

class VerficationcodePasswordcontrollaerImp
    extends VerficationcodePasswordcontrollaer {
  StatusRequest? statusRequest;
  final VerfyCodePasswordData _verfyCodeData =
      VerfyCodePasswordData(Get.find());
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
        Get.offNamed(AppRoutes.resetepassword, arguments: {
          "email": email,
        });
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
