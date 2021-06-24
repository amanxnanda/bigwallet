import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
  }
}
