import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../class/status_request.dart';
import '../constant/colors.dart';
import '../constant/image_assets.dart';

void handleErrors(StatusRequest statusRequest) {
  statusRequest == StatusRequest.offlinefailure
      ? Get.defaultDialog(
          backgroundColor: AppColor.backgroundcolor,
          title: "Warning",
          content: Center(
            child: Lottie.asset(AppImageAsset.offline, width: 250, height: 250),
          ))
      : statusRequest == StatusRequest.serverfailure ||
              statusRequest == StatusRequest.serverException
          ? Get.defaultDialog(
              backgroundColor: AppColor.backgroundcolor,
              title: "Warning",
              content: Center(
                child:
                    Lottie.asset(AppImageAsset.server, width: 250, height: 250),
              ))
          : Get.defaultDialog(
              backgroundColor: AppColor.backgroundcolor,
              title: "Warning",
              content: Center(
                child: Lottie.asset(AppImageAsset.offline,
                    width: 250, height: 250),
              ));
}
