import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/app_link.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/class/api.dart';

class ForgetPasswordData {
  final Api _api;

  ForgetPasswordData(this._api);
  checkEmailApi(String email) async {
    var result = await _api.postData(AppLink.checkemail, {
      "email": email,
    });
    return result.fold((l) => l, (r) => r);
  }

  sendPasswordResetEmail(String email) async {
    var result = await sendPasswordResetEmailFireBase(email);
    return result.fold((l) => l, (r) => r);
  }

  sendPasswordResetEmailFireBase(String email) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth.sendPasswordResetEmail(email: email);
      return const Right("");
    } catch (e) {
      return const Left(StatusRequest.failure);
    }
  }
}
