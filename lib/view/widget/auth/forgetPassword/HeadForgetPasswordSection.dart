import 'package:flutter/material.dart';

import '../CustomBodyTextAuth.dart';
import '../CustomTextTitleAuth.dart';

class HeadForgetPasswordSection extends StatelessWidget {
  const HeadForgetPasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        CustomTextTitleAuth(
          text: "Check Email",
        ),
        SizedBox(
          height: 20,
        ),
        CustomBodyTextAuth(
          text: "Enter Your Email To Send You a code",
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
