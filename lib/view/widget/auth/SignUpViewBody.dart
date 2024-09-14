import 'package:flutter/material.dart';

import 'CustomAuthButton.dart';
import 'HaveAnAcountSection.dart';
import 'HeadSignUpSection.dart';
import 'TextFieldSignUpSection.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      children: [
        const HeadSignUpSection(),
        const TextFieldSignUpSection(),
        CustomAuthButton(
          text: "Sign Up",
          onPressed: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        const HaveAnAcountSection()
      ],
    );
  }
}
