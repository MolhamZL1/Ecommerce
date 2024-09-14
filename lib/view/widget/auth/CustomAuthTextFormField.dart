import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CustomAuthTextFormField extends StatelessWidget {
  const CustomAuthTextFormField(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.controller,
      required this.iconData,
      required this.validator,
      this.isNumber = false,
      this.isObsecure = false});
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final IconData iconData;
  final String? Function(String?) validator;
  final bool isNumber;
  final bool isObsecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isNumber ? TextInputType.number : null,
      controller: controller,
      obscureText: isObsecure,
      validator: validator,
      cursorColor: AppColor.primaryColor,
      decoration: InputDecoration(
          border: buildauthborder(),
          focusedBorder: buildauthborder(),
          suffixIcon: Icon(iconData),
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              labelText,
              style: const TextStyle(color: AppColor.grey),
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText),
    );
  }

  OutlineInputBorder buildauthborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(32),
        borderSide: const BorderSide(color: AppColor.primaryColor));
  }
}
