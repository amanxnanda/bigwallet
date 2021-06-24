import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// A forgot password view by which user can reset their password
/// by entering therir email id
class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<ForgotPasswordController>(
        builder: (controller) => Scaffold(
          key: const Key('ForgotPasswordKey'),
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
                  StringConstants.forgotPassword,
                  style: Styles.boldBlack22,
                ),
                Dimens.boxHeight5,
                Text(
                  StringConstants.pleaseEnterEmail,
                  style: Styles.lightGrey15,
                ),
                Dimens.boxHeight50,
                Text(
                  StringConstants.enterDetails,
                  style: Styles.lightGrey15,
                ),
                Dimens.boxHeight5,
                FormFieldWidget(
                  key: const Key('email-field'),
                  autoFocus: false,
                  isFilled: true,
                  isObscureText: false,
                  contentPadding: Dimens.edgeInsets16,
                  fillColor: ColorsValue.backgroundColor,
                  hintText: StringConstants.emailAddress,
                  hintStyle: Styles.lightGrey15,
                  errorStyle: Styles.black16,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                  errorText: controller.emailErrorText,
                  formBorder: Styles.outlineBorderRadius5,
                  formStyle: Styles.boldBlack18,
                  onChange: controller.checkIfEmailIsValid,
                )
              ],
            ),
          ),
          floatingActionButton: ForgotPasswordFloatingButtonWidget(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ),
      );
}
