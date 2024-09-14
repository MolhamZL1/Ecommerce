import 'package:ecommerce/controller/auth/resetPasswordController.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/AuthViewAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/ResetPasswordViewBody.dart';

class Resetepasswordview extends StatelessWidget {
  const Resetepasswordview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetpasswordcontrollerImp());
    return const Scaffold(
      appBar: AuthViewAppBar(text: "Reset Password"),
      backgroundColor: AppColor.backgroundcolor,
      body: ResetPasswordViewBody(),
    );
  }
}
