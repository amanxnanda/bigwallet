import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// A list of bindings which will be used in the route of SplashView.
/// Will be ignored for test since all are static values and would not change.

// coverage:ignore-file
class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
  }
}
