import 'package:ecommerce/core/constant/app_link.dart';

import '../../../../core/class/api.dart';

class VerfyCodeSignUpData {
  final Api _api;

  VerfyCodeSignUpData(this._api);
  verifyCode(
    String email,
    String code,
  ) async {
    var result = await _api.postData(AppLink.verifycodesignup, {
      "email": email,
      "verifycode": code,
    });
    return result.fold((l) => l, (r) => r);
  }
}
