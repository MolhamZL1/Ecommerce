import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CustomBodyTextAuth extends StatelessWidget {
  const CustomBodyTextAuth({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColor.grey),
      textAlign: TextAlign.center,
    );
  }
}
