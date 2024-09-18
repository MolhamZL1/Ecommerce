import 'package:ecommerce/controller/auth/forgetpassword/forgetpasswordController.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/widgets/handling_data_view.dart';
import 'package:ecommerce/view/widget/auth/AuthViewAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/forgetPassword/ForgetPasswordViewBody.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetpasswordcontrollerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      appBar: const AuthViewAppBar(text: "Forget Password"),
      body: GetBuilder<ForgetpasswordcontrollerImp>(builder: (controller) {
        return HandlingDataView(
            statusRequest: controller.statusRequest,
            child: const ForgetPasswordViewBody());
      }),
    );
  }
}
