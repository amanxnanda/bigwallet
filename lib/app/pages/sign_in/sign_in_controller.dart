import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  /// Error text for email form field.
  String? emailErrorText;

  /// Is true when the email is valid.
  bool isEmailValid = true;

  /// Is password visible
  bool isPasswordVisible = false;

  /// Email id of the user
  String emailId = '';

  /// Password of the user.
  String password = '';

  /// A variable which will be used to update the submit button.
  bool isSubmitButtonEnable = false;

  /// Check if the email is valid or not.
  void checkIfEmailIsValid(String email) {
    isEmailValid = Utility.emailValidator(email);
    emailId = email;
    emailErrorText =
        isEmailValid ? null : StringConstants.pleaseEnterValidEmail;
    enableSubmitButton();
  }

  void updatePassword(String password) {
    this.password = password;
    enableSubmitButton();
  }

  /// Update the [isPasswordVisible] to show the password or not.
  void updatePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }

  /// Enable or disable the submit based on [emailId] and [password].
  void enableSubmitButton() {
    isSubmitButtonEnable =
        isEmailValid && emailId.isNotEmpty && password.isNotEmpty;
    update();
  }

  /// Submit the login details and authenticate the
  /// user by [emailId] and [password].
  void submitLoginDetails() async {
    Utility.printILog('Signing In');
  }
}
