// coverage:ignore-file
part of 'app_pages.dart';

/// A chunks of routes and the path names which will be used to create
/// routes in [AppPages].
abstract class Routes {
  static const splashScreen = _Paths.splashScreen;
  static const signIn = _Paths.signIn;
  static const phoneSignUp = _Paths.phoneSignUp;
  static const codeVerification = _Paths.codeVerification;
  static const forgotPassword = _Paths.forgotPassword;
  static const personalDetails = _Paths.personalDetails;
}

abstract class _Paths {
  static const splashScreen = '/splash-screen';
  static const signIn = '/sign-in-screen';
  static const phoneSignUp = '/phone-sign-up';
  static const codeVerification = '/code-verification';
  static const forgotPassword = '/forgot-password';
  static const personalDetails = '/personal-details';
}
