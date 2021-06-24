import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// binding which will used in the routing of [CodeVerificationView]
class PersonalDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalDetailsController());
  }
}
