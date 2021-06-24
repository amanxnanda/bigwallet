// coverage:ignore-file
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

abstract class RouteManagement {
  /// Go to the SignIn Screen
  static void goToSignIn() {
    Get.offAllNamed<void>(
      Routes.signIn,
    );
  }

  /// Go to the LogIn Screen
  static void goToLogIn() {
    Get.toNamed<void>(
      Routes.logIn,
    );
  }

  /// Go to the LogIn Screen
  static void goToForgotPassword() {
    Get.toNamed<void>(
      Routes.forgotPassword,
    );
  }
}
