import 'package:ecommerce/controller/auth/signupController.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/AuthViewAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/SignUpViewBody.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return const Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      appBar: AuthViewAppBar(text: "Sign Up"),
      body: SignUpViewBody(),
    );
  }
}
