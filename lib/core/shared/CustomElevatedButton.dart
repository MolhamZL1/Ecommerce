import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll<Color>(AppColor.primaryColor),
            shape: WidgetStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)))),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
