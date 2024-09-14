import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChooseLanguageItem extends StatelessWidget {
  const ChooseLanguageItem({
    super.key,
    required this.text,
    required this.image,
    required this.onTap,
  });
  final String text;
  final String image;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            image,
            height: 100,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
