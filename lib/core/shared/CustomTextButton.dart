import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: const TextStyle(
              color: AppColor.primaryColor, fontWeight: FontWeight.bold),
        ));
  }
}
