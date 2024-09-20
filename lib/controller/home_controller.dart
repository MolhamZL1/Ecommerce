import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/data/data_source/reomte/home/home_data.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../core/functions/handleErrors.dart';
import '../core/functions/handlingdata.dart';

abstract class HomeController extends GetxController {
  getData();
}

class HomeControllerImp extends HomeController {
  StatusRequest? statusRequest;
  final HomeData _homeData = HomeData(Get.find());
  List<Category> categories = [];

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await _homeData.getData();
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      categories.addAll(response["categories"]);
    } else if (statusRequest == StatusRequest.failure) {
      // Get.defaultDialog(
      //   backgroundColor: AppColor.backgroundcolor,
      //   title: "Warning",
      //   middleText: "Email is already in use Or password is weak",
      // );
    } else {
      handleErrors(statusRequest!);
    }
    update();
  }
}
