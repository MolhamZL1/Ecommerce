import 'package:ecommerce/controller/auth/VerficationcodeEmailcontrollaer.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/widgets/handling_data_view.dart';
import 'package:ecommerce/view/widget/auth/AuthViewAppBar.dart';
import 'package:ecommerce/view/widget/auth/VerifycodeEmailviewBody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verifycodeemailview extends StatelessWidget {
  const Verifycodeemailview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerficationcodeEmailcontrollaerImp());
    return Scaffold(
      appBar: const AuthViewAppBar(text: "OTP Verification"),
      backgroundColor: AppColor.backgroundcolor,
      body:
          GetBuilder<VerficationcodeEmailcontrollaerImp>(builder: (controller) {
        return HandlingDataView(
            statusRequest: controller.statusRequest,
            child: const VerifycodeEmailviewBody());
      }),
    );
  }
}
