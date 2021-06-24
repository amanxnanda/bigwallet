import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

class LogInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInController());
  }
}
