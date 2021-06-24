import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

/// A controller for the [CodeVerificationView], to update the UI.
class CodeVerificationController extends GetxController {
  @override
  void onInit() {
    _countdown();
    super.onInit();
  }

  /// coutdonwn starts after navigating to [CodeVerificationView]
  void _countdown() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        _timerDuration.value -= const Duration(seconds: 1);
        if (_timerDuration.value.inSeconds == 0) {
          timer.cancel();
        }
      },
    );
  }

  /// onTap for edit button beside phone number
  void onEdit() {
    Utility.printILog('Verifing');
  }

  /// length of verification code
  int verificationCodeLength = 4;

  /// is Verifiy button enabled
  RxBool isVerifyButtonEnabled = false.obs;

  /// controller for code verification code
  final pinPutController = TextEditingController();

  /// timer duration for countdown
  final _timerDuration = const Duration(minutes: 2).obs;

  /// remaining minutes of timer duration with 0 interpolated
  /// when minute is less that 10
  String get remainingMinute {
    if (_timerDuration.value.inMinutes < 10) {
      return '0${_timerDuration.value.inMinutes}';
    } else {
      return _timerDuration.value.inMinutes.toString();
    }
  }

  /// remaining seconds of timer duration with 0 interpolated
  /// when second is less than 10
  String get remainingSeconds {
    if (_timerDuration.value.inSeconds < 10) {
      return '0${_timerDuration.value.inSeconds}';
    } else {
      return (_timerDuration.value.inSeconds -
              _timerDuration.value.inMinutes * 60)
          .toString();
    }
  }

  /// onChanged of [PinPut]
  /// Verify button is enabled when
  /// all fileds are filled
  void onChanged(String value) {
    if (pinPutController.text.length == verificationCodeLength) {
      isVerifyButtonEnabled.value = true;
    } else {
      isVerifyButtonEnabled.value = false;
    }
  }

  /// onPressed for Verifiy button
  void onVerifiy() {
    Utility.printILog('Verifing');
    RouteManagement.goToPersonalDetails();
  }

  @override
  void dispose() {
    pinPutController.dispose();
    super.dispose();
  }
}
