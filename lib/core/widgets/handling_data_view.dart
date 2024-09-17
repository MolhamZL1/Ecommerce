import 'package:ecommerce/core/class/status_request.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constant/image_assets.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView(
      {super.key, required this.child, required this.statusRequest});
  final Widget child;
  final StatusRequest statusRequest;

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImageAsset.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure ||
                    statusRequest == StatusRequest.serverException
                ? Center(
                    child: Lottie.asset(AppImageAsset.server,
                        width: 250, height: 250))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Lottie.asset(AppImageAsset.noData,
                            width: 250, height: 250, repeat: true))
                    : child;
  }
}
