import 'package:ecommerce/controller/auth/resetPasswordController.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/widgets/handling_data_view.dart';
import 'package:ecommerce/view/widget/auth/AuthViewAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/ResetPasswordViewBody.dart';

class Resetepasswordview extends StatelessWidget {
  const Resetepasswordview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetpasswordcontrollerImp());
    return Scaffold(
      appBar: const AuthViewAppBar(text: "Reset Password"),
      backgroundColor: AppColor.backgroundcolor,
      body: GetBuilder<ResetpasswordcontrollerImp>(builder: (controller) {
        return HandlingDataView(
            statusRequest: controller.statusRequest,
            child: const ResetPasswordViewBody());
      }),
    );
  }
}
