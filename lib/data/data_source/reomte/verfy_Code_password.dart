import 'package:ecommerce/core/constant/app_link.dart';

import '../../../core/class/api.dart';

class VerfyCodePasswordData {
  final Api _api;

  VerfyCodePasswordData(this._api);
  verifyCode(
    String email,
    String code,
  ) async {
    var result = await _api.postData(AppLink.verifycodepassword, {
      "email": email,
      "verifycode": code,
    });
    return result.fold((l) => l, (r) => r);
  }
}
