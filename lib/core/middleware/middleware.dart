import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {
  MyServices myServices = Get.find();

  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onBoarding") == "skipped") {
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}
