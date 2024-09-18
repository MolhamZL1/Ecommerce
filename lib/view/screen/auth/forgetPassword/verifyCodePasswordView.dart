import 'package:ecommerce/controller/auth/verficationcodePasswordcontrollaer.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/widgets/handling_data_view.dart';
import 'package:ecommerce/view/widget/auth/AuthViewAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/VerifycodePasswordviewBody.dart';

class VerifycodePasswordview extends StatelessWidget {
  const VerifycodePasswordview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerficationcodePasswordcontrollaerImp());
    return Scaffold(
      appBar: const AuthViewAppBar(text: "OTP Verification"),
      backgroundColor: AppColor.backgroundcolor,
      body: GetBuilder<VerficationcodePasswordcontrollaerImp>(
          builder: (controller) {
        return HandlingDataView(
            statusRequest: controller.statusRequest,
            child: const VerifycodePasswordviewBody());
      }),
    );
  }
}
