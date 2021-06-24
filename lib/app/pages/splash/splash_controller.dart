import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// The splash controller which will be used to control the SplashView.
class SplashController extends GetxController {
  @override
  void onInit() {
    goToHomePage(true);
    super.onInit();
  }

  /// Go to home page
  ///
  /// [shouldWait] : Tells if there should be delay before going to
  /// home page or not.
  void goToHomePage(bool shouldWait) {
    Future.delayed(
      Duration(seconds: shouldWait ? 2 : 0),
      RouteManagement.goToSignIn,
    );
  }
}
