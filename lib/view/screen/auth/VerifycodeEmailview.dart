import 'package:ecommerce/controller/auth/verficationcodePasswordcontrollaer.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/AuthViewAppBar.dart';
import 'package:ecommerce/view/widget/auth/VerifycodeEmailviewBody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verifycodeemailview extends StatelessWidget {
  const Verifycodeemailview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerficationcodePasswordcontrollaerImp());
    return const Scaffold(
      appBar: AuthViewAppBar(text: "OTP Verification"),
      backgroundColor: AppColor.backgroundcolor,
      body: VerifycodeEmailviewBody(),
    );
  }
}
