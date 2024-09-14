import 'package:ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerficationcodeEmailcontrollaer extends GetxController {
  onComplete();
}

class VerficationcodeEmailcontrollaerImp
    extends VerficationcodeEmailcontrollaer {
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
    Get.offNamed(AppRoutes.successRegisteration);
  }
}
