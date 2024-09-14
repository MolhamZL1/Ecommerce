import 'package:ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerficationcodePasswordcontrollaer extends GetxController {
  onComplete();
}

class VerficationcodePasswordcontrollaerImp
    extends VerficationcodePasswordcontrollaer {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  onComplete() {
    Get.offNamed(AppRoutes.resetepassword);
  }
}
