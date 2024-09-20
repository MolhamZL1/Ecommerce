import 'package:ecommerce/core/constant/app_link.dart';

import '../../../../core/class/api.dart';

class ResetePasswordData {
  final Api _api;

  ResetePasswordData(this._api);
  reset(
    String email,
    String password,
  ) async {
    var result = await _api.postData(AppLink.resetPassword, {
      "email": email,
      "password": password,
    });
    return result.fold((l) => l, (r) => r);
  }
}
