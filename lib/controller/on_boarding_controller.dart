import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int pageIndex);
}

class OnBoardingControllerImp extends OnBoardingController {
  MyService myservice = Get.find();
  late PageController pageController;
  int currentPage = 0;
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  @override
  next() {
    if (currentPage >= onBoardingList.length - 1) {
      myservice.sharedpref.setString(key:"onBoarding",value:"skipped");
      Get.offAllNamed(AppRoutes.login);
    } else {
      currentPage++;
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int pageIndex) {
    currentPage = pageIndex;
    update();
  }
}
