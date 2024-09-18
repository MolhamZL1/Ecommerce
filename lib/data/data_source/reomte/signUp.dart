import 'package:ecommerce/core/constant/app_link.dart';

import '../../../core/class/api.dart';

class SignUpData {
  final Api _api;

  SignUpData(this._api);
  signUp(String username, String email, String password,
      String phoneNumber) async {
    var result = await _api.postData(AppLink.signUp, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phoneNumber,
    });
    return result.fold((l) => l, (r) => r);
  }
}
