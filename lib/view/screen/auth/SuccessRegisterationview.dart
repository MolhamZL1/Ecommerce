import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth/SuccessPasswordviewBody.dart';
import 'package:flutter/material.dart';

import '../../widget/auth/AuthViewAppBar.dart';

class SuccessEmailview extends StatelessWidget {
  const SuccessEmailview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AuthViewAppBar(text: "Success"),
      backgroundColor: AppColor.backgroundcolor,
      body: SuccessEmailviewBody(),
    );
  }
}
