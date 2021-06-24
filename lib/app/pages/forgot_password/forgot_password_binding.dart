// coverage:ignore-file
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// binding which will used in the routing of [ForgotPasswordView]
class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(),
    );
  }
}
