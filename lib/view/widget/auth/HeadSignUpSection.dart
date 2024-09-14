import 'package:flutter/material.dart';

import 'CustomBodyTextAuth.dart';
import 'CustomTextTitleAuth.dart';

class HeadSignUpSection extends StatelessWidget {
  const HeadSignUpSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CustomTextTitleAuth(
          text: "Complete Profile",
        ),
        SizedBox(
          height: 30,
        ),
        CustomBodyTextAuth(
          text: "Complete your details or confirm with social media",
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
