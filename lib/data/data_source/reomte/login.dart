import 'package:ecommerce/core/constant/app_link.dart';

import '../../../core/class/api.dart';

class LoginData {
  final Api _api;

  LoginData(this._api);
  login(String email, String password) async {
    var result = await _api.postData(AppLink.login, {
      "email": email,
      "password": password,
    });
    return result.fold((l) => l, (r) => r);
  }
}
