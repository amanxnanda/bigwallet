import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// A controller for the [ForgotPasswordView], to update the UI.
class ForgotPasswordController extends GetxController {
  RxBool isResetButtonEnabled = false.obs;

  /// Error text for email form field.
  String? emailErrorText;

  /// Is true when the email is valid.
  RxBool isEmailValid = true.obs;

  /// Email id of the user
  String emailId = '';

  // is email id registered with us
  bool isEmailRegisteredWithUs = true;

  /// Check if the email is valid or not.
  void checkIfEmailIsValid(String email) {
    isEmailValid.value = Utility.emailValidator(email);
    emailId = email;
    isResetButtonEnabled.value = isEmailValid.value;
    emailErrorText =
        isEmailValid.value ? null : StringConstants.pleaseEnterValidEmail;
    update();
  }

  /// onPressed for Reset Password button
  void onResetPassword() {
    Utility.printILog('Reseting password');
    checkEmailWithUs();
  }

  /// checking is email id is registered with us
  void checkEmailWithUs() {
    isEmailRegisteredWithUs = false;
    update();
  }
}
