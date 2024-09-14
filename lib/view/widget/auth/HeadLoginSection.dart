import 'package:flutter/material.dart';

import '../../../core/constant/image_assets.dart';
import 'CustomBodyTextAuth.dart';
import 'CustomTextTitleAuth.dart';

class HeadLoginSection extends StatelessWidget {
  const HeadLoginSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          AppImageAsset.logo,
          height: 150,
        ),
        const CustomTextTitleAuth(
          text: "Welcome Back",
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomBodyTextAuth(
          text:
              "Sign In With Your Email And Password OR Continue With Social Media",
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
