import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../firebase_options.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MyServices> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions
          .currentPlatform, // Make sure this is properly set
    );
    sharedPreferences = await SharedPreferences.getInstance();

    return this;
  }
}

Future<void> initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
