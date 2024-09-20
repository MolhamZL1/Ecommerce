import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/constant/app_link.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/class/api.dart';
import '../../../../core/class/status_request.dart';
import '../../../../core/functions/checkinternet.dart';

class SignUpData {
  final Api _api;
  SignUpData(this._api);

  signUp(
    String username,
    String email,
    String password,
    String phoneNumber,
  ) async {
    var result = await signUpFireBase(
      username,
      email,
      password,
      phoneNumber,
    );
    return result.fold((l) => l, (r) => r);
  }

  signUpApi(
    String username,
    String email,
    String password,
    String phoneNumber,
  ) async {
    var result = await _api.postData(AppLink.signUp, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phoneNumber,
    });
    return result.fold((l) => l, (r) => r);
  }

  signUpFireBase(
    String username,
    String email,
    String password,
    String phoneNumber,
  ) async {
    try {
      if (await checkInternet()) {
        UserCredential credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        CollectionReference users =
            FirebaseFirestore.instance.collection('users');
        users.doc(credential.user?.uid).set({
          "name": username,
          "email": email,
          "phone": phoneNumber,
        });
        await credential.user?.sendEmailVerification();

        return Right({
          "name": username,
          "email": email,
          "phone": phoneNumber,
        });
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return const Left(StatusRequest.failure);
      } else if (e.code == 'email-already-in-use') {
        return const Left(StatusRequest.failure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverException);
    }
  }
}
