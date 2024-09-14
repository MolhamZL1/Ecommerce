import 'package:flutter/widgets.dart';

import 'CustomBodyTextAuth.dart';
import 'CustomTextTitleAuth.dart';

class HeadVerficationSection extends StatelessWidget {
  const HeadVerficationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextTitleAuth(
          text: "OTP Verification",
        ),
        SizedBox(
          height: 20,
        ),
        CustomBodyTextAuth(
          text: "code sended to molhamsa49@gmail.com",
        ),
      ],
    );
  }
}
