import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      backgroundColor: AppColor.backgroundcolor,
      title: "تنبيه",
      titleStyle: const TextStyle(
          color: AppColor.primaryColor, fontWeight: FontWeight.bold),
      middleText: "هل تريد الخروج من التطبيق",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child: const Text(
              "تاكيد",
              style: TextStyle(color: Colors.white),
            )),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child: const Text(
              "الغاء",
              style: TextStyle(color: Colors.white),
            ))
      ]);
  return Future.value(true);
}
