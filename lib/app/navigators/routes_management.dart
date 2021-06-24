// coverage:ignore-file
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

abstract class RouteManagement {
  /// Go to the splash screen.
  static void goToSplash() {
    Get.offNamed<void>(
      Routes.splashScreen,
    );
  }

  /// Go to the SignIn Screen
  static void goToSignIn() {
    Get.offAllNamed<void>(
      Routes.signIn,
    );
  }

  /// Go to the PhoneSignUp Screen
  static void goToPhoneSignUp() {
    Get.toNamed<void>(
      Routes.phoneSignUp,
    );
  }

  /// Go to the CodeVerification Screen
  static void goToCodeVerification() {
    Get.toNamed<void>(
      Routes.codeVerification,
    );
  }

  /// Go to the ForgotPassword Screen
  static void goToForgotPassword() {
    Get.toNamed<void>(
      Routes.forgotPassword,
    );
  }

  /// Go to the PersonalDetails Screen
  static void goToPersonalDetails() {
    Get.toNamed<void>(
      Routes.personalDetails,
    );
  }
}
