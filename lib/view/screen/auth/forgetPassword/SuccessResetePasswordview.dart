import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

import '../../../widget/auth/AuthViewAppBar.dart';
import '../../../widget/auth/SuccessauthviewBody.dart';

class SuccessResetePasswordview extends StatelessWidget {
  const SuccessResetePasswordview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AuthViewAppBar(text: "Success"),
      backgroundColor: AppColor.backgroundcolor,
      body: SuccessPasswordviewBody(),
    );
  }
}
