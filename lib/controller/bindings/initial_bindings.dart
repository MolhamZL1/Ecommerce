import 'package:ecommerce/core/class/api.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Api());
  }
}
