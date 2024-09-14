import 'package:ecommerce/controller/auth/forgetpasswordController.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/AuthViewAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/ForgetPasswordViewBody.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetpasswordcontrollerImp());
    return const Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      appBar: AuthViewAppBar(text: "Forget Password"),
      body: ForgetPasswordViewBody(),
    );
  }
}
