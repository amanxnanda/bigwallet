// coverage:ignore-file
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// binding for [PhoneSignUpView]
class PhoneSignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneSignUpController>(
      () => PhoneSignUpController(),
    );
  }
}
