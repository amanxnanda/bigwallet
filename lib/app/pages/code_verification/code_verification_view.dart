import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

/// A code verification view for verifing OTP recieved on
/// user's phone number
class CodeVerificationView extends StatelessWidget {
  final _phoneSignUpController = Get.find<PhoneSignUpController>();

  @override
  Widget build(BuildContext context) => GetBuilder<CodeVerificationController>(
        builder: (controller) => Scaffold(
          key: const Key('CodeVerificationKey'),
          backgroundColor: ColorsValue.backgroundColor,
          body: SafeArea(
            child: ListView(
              shrinkWrap: true,
              padding: Dimens.edgeInsets18_0_18_0,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Dimens.boxHeight30,
                BackButtonWidget(),
                Dimens.boxHeight10,
                Text(
                  StringConstants.enterVerificationCode,
                  style: Styles.boldBlack22,
                ),
                Dimens.boxHeight5,
                Text(
                  StringConstants.verificationSendTo,
                  style: Styles.lightGrey15,
                ),
                Dimens.boxHeight5,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _phoneSignUpController.textCompleteNumber,
                      style: Styles.boldBlack15,
                    ),
                    Dimens.boxWidth2,
                    InkWell(
                      onTap: Get.back,
                      child: Image.asset(
                        AssetConstants.editIcon,
                        height: Dimens.fifteen,
                      ),
                    )
                  ],
                ),
                Dimens.boxHeight50,
                Padding(
                  padding: Dimens.edgeInsets0_0_50_0,
                  child: PinPut(
                    fieldsCount: controller.verificationCodeLength,
                    controller: controller.pinPutController,
                    onChanged: controller.onChanged,
                    eachFieldHeight: Dimens.fourty + Dimens.five,
                    eachFieldWidth: Dimens.fourty + Dimens.five,
                    textStyle: Styles.boldBlack22,
                    submittedFieldDecoration: Styles.pinPutDecoration,
                    selectedFieldDecoration: Styles.pinPutDecoration,
                    followingFieldDecoration: Styles.pinPutDecoration,
                  ),
                ),
                Dimens.boxHeight10,
                Obx(
                  () => Text(
                    '${controller.remainingMinute}:${controller.remainingSeconds}',
                    style: Styles.boldBlack15,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: Obx(
            () => Padding(
              padding: Dimens.edgeInsets18_0_18_0,
              child: FormSubmitWidget(
                key: const Key('VerifyButton'),
                opacity: controller.isVerifyButtonEnabled.value ? 1 : 0.5,
                disableColor: ColorsValue.primaryColor,
                padding: Dimens.edgeInsets15,
                text: StringConstants.verify.toUpperCase(),
                textStyle: Styles.boldWhite16,
                fixedSize: Size(
                  Dimens.percentWidth(1),
                  Dimens.fifty,
                ),
                onTap: controller.isVerifyButtonEnabled.value
                    ? controller.onVerifiy
                    : null,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ),
      );
}
