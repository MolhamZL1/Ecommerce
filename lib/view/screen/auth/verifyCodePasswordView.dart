import 'package:ecommerce/controller/auth/VerficationcodeEmailcontrollaer.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/AuthViewAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/VerifycodePasswordviewBody.dart';

class VerifycodePasswordview extends StatelessWidget {
  const VerifycodePasswordview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerficationcodeEmailcontrollaerImp());
    return const Scaffold(
      appBar: AuthViewAppBar(text: "OTP Verification"),
      backgroundColor: AppColor.backgroundcolor,
      body: VerifycodePasswordviewBody(),
    );
  }
}
