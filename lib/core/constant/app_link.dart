abstract class AppLink {
  static const String server = "https://waelabohamza.com/ecommerce";
//
  static const String test = "$server/test.php";

// ================================= Auth ========================== //

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycodesignup = "$server/auth/verifycodesignup.php";
  static const String verifycodepassword =
      "$server/auth/verifycodepassword.php";
  static const String checkemail = "$server/auth/checkemail.php";
  static const String resetPassword = "$server/auth/resetPassword.php";
}
