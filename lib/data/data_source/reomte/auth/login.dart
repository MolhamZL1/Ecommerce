import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/constant/app_link.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/instance_manager.dart';

import '../../../../core/class/api.dart';
import '../../../../core/class/status_request.dart';
import '../../../../core/functions/checkinternet.dart';

class LoginData {
  final Api _api;

  LoginData(this._api);

  login(
    String email,
    String password,
  ) async {
    var result = await loginFireBase(
      email,
      password,
    );
    return result.fold((l) => l, (r) => r);
  }

  loginApi(
    String email,
    String password,
  ) async {
    var result = await _api.postData(AppLink.login, {
      "password": password,
      "email": email,
    });
    return result.fold((l) => l, (r) => r);
  }

  loginFireBase(
    String email,
    String password,
  ) async {
    try {
      if (await checkInternet()) {
        //auth
        UserCredential credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        User? user = credential.user;
        if (user != null) {
          // Check if email is verified
          if (user.emailVerified) {
            CollectionReference users =
                FirebaseFirestore.instance.collection('users');

            DocumentSnapshot userData =
                await users.doc(credential.user?.uid).get();

            return Right({
              "name": userData["name"],
              "email": userData["email"],
              "phone": userData["phone"],
            });
          } else {
            return const Left(StatusRequest.serverfailure);
          }
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return const Left(StatusRequest.failure);
      } else if (e.code == 'wrong-password') {
        return const Left(StatusRequest.failure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverException);
    }
  }
}
