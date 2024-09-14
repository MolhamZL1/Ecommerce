import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            padding: const WidgetStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(vertical: 10)),
            backgroundColor:
                const WidgetStatePropertyAll<Color>(AppColor.primaryColor),
            shape: WidgetStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)))),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
