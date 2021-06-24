import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// A controller for the [PhoneSignUpView], to update the UI.
class PhoneSignUpController extends GetxController {
  /// initial country code to be shown besided phone field
  String get initialCountryCode => 'CA';

  /// Country code selected by user
  String? _countryCode;

  /// phone number entered by user;
  String? _phoneNumber;

  /// country code plus phone number
  String? _completeNumber;

  /// country code plus phone number
  String? get coutnryCode => _countryCode;

  /// country code plus phone number
  String? get phoneNumber => _phoneNumber;

  /// country code plus phone number
  String? get completeNumber => _completeNumber;

  /// phone number with country code to shown on [CodeVerificationView]
  String get textCompleteNumber =>
      '${_countryCode ?? ''} ${_phoneNumber?.substring(0, 5)}  ${_phoneNumber?.substring(5)}';

  /// is continue button enabled
  RxBool isContinueButtonEnabled = false.obs;

  /// Called when the user initiates a change to the TextField's value: when they have inserted or deleted text.
  void onChanged(PhoneNumber phoneNumber) {
    _phoneNumber = phoneNumber.number;
    _countryCode = phoneNumber.countryCode;
    isContinueButtonEnabled.value = _phoneNumber?.length == 10;
  }

  /// called when the user changes country code
  void onCountryChanged(PhoneNumber phoneNumber) {
    _countryCode = phoneNumber.countryCode;
    isContinueButtonEnabled.value = _phoneNumber?.length == 10;
  }

  /// onPressed for ContinueButton
  void onContinue() {
    Utility.printILog('Continuing');
    RouteManagement.goToCodeVerification();
  }
}
