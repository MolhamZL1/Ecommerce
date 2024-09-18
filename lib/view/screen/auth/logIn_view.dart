import 'package:ecommerce/controller/auth/signinController.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/widgets/handling_data_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/AuthViewAppBar.dart';
import '../../widget/auth/LoginViewBody.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignInControllerImp());
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        appBar: const AuthViewAppBar(
          text: "Sign In",
        ),
        body: GetBuilder<SignInControllerImp>(builder: (controller) {
          return HandlingDataView(
              statusRequest: controller.statusRequest,
              child: const LoginViewBody());
        }),
      ),
    );
  }
}
