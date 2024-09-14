import 'package:flutter/material.dart';

class CustomTextTitleAuth extends StatelessWidget {
  const CustomTextTitleAuth({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
      textAlign: TextAlign.center,
    );
  }
}
