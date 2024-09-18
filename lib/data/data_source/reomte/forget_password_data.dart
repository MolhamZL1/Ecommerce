import 'package:ecommerce/core/constant/app_link.dart';

import '../../../core/class/api.dart';

class ForgetPasswordData {
  final Api _api;

  ForgetPasswordData(this._api);
  checkEmail(String email) async {
    var result = await _api.postData(AppLink.checkemail, {
      "email": email,
    });
    return result.fold((l) => l, (r) => r);
  }
}
