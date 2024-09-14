import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/middleware/middleware.dart';
import 'package:ecommerce/view/screen/ChooseLanguageVieew.dart';
import 'package:ecommerce/view/screen/auth/SuccessRegisterationview.dart';
import 'package:ecommerce/view/screen/auth/VerifycodeEmailview.dart';
import 'package:ecommerce/view/screen/auth/forgetPasswordView.dart';
import 'package:ecommerce/view/screen/auth/logIn_view.dart';
import 'package:ecommerce/view/screen/auth/resetePasswordView.dart';
import 'package:ecommerce/view/screen/auth/signUpView.dart';
import 'package:ecommerce/view/screen/auth/SuccessResetePasswordview.dart';
import 'package:ecommerce/view/screen/auth/verifyCodePasswordView.dart';
import 'package:ecommerce/view/screen/on_boarding_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/",
      page: () => const ChooseLanguageVieew(),
      middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutes.login, page: () => const LoginView()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUpView()),
  GetPage(
      name: AppRoutes.forgetPassword, page: () => const ForgetPasswordView()),
  GetPage(
      name: AppRoutes.resetepassword, page: () => const Resetepasswordview()),
  GetPage(
      name: AppRoutes.successResetPassword,
      page: () => const SuccessResetePasswordview()),
  GetPage(
      name: AppRoutes.successRegisteration,
      page: () => const SuccessEmailview()),
  GetPage(
      name: AppRoutes.verifycodepassword,
      page: () => const VerifycodePasswordview()),
  GetPage(
      name: AppRoutes.verifycodeEmail, page: () => const Verifycodeemailview()),
  GetPage(name: AppRoutes.onBoardingView, page: () => const OnBoardingView()),
];
