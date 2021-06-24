import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// Widget that contain all the required elements for the SignUpView
class SignInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Expanded(
        child: ListView(
          key: const Key('SignInWidget'),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: Dimens.edgeInsets18_0_18_0,
          children: [
            Dimens.boxHeight50,
            Image.asset(
              AssetConstants.logo,
              width: Dimens.percentWidth(.2),
              height: Dimens.percentHeight(.15),
            ),
            Dimens.boxHeight50,
            GetBuilder<SignInController>(
                builder: (_controller) => FormFieldWidget(
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
                      errorText: _controller.emailErrorText,
                      formBorder: Styles.outlineBorderRadius5,
                      formStyle: Styles.black18,
                      onChange: _controller.checkIfEmailIsValid,
                    )),
            Dimens.boxHeight15,
            GetBuilder<SignInController>(
                builder: (_controller) => FormFieldWidget(
                      key: const Key('password-field'),
                      autoFocus: false,
                      isFilled: true,
                      isObscureText: !_controller.isPasswordVisible,
                      obscureCharacter: '*',
                      contentPadding: Dimens.edgeInsets16,
                      fillColor: ColorsValue.backgroundColor,
                      hintText: StringConstants.password,
                      hintStyle: Styles.lightGrey15,
                      errorStyle: Styles.black16,
                      formBorder: Styles.outlineBorderRadius5,
                      formStyle: Styles.black18,
                      onChange: _controller.updatePassword,
                      suffixIcon: IconButton(
                          onPressed: _controller.updatePasswordVisibility,
                          icon: _controller.isPasswordVisible
                              ? Image.asset(AssetConstants.showPassword)
                              : Image.asset(AssetConstants.hidePassword)),
                    )),
            Dimens.boxHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: RouteManagement.goToForgotPassword,
                  child: Text(
                    StringConstants.forgotPassword,
                    style: Styles.lightGrey13,
                  ),
                )
              ],
            ),
            Dimens.boxHeight30,
            GetBuilder<SignInController>(
                builder: (_controller) => SizedBox(
                      width: Dimens.percentWidth(1),
                      height: Dimens.fifty,
                      child: FormSubmitWidget(
                        key: const Key('SignInButton'),
                        opacity: _controller.isSubmitButtonEnable ? 1 : 0.5,
                        disableColor: ColorsValue.primaryColor,
                        padding: Dimens.edgeInsets15,
                        text: StringConstants.login,
                        textStyle: Styles.boldWhite16,
                        onTap: _controller.isSubmitButtonEnable
                            ? _controller.submitLoginDetails
                            : null,
                      ),
                    )),
            Dimens.boxHeight30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Dimens.percentWidth(.25),
                  child: const Divider(
                    thickness: 1,
                    height: 2,
                  ),
                ),
                Text(
                  StringConstants.orContinueWith,
                  style: Styles.lightGrey13,
                ),
                SizedBox(
                  width: Dimens.percentWidth(.25),
                  child: const Divider(
                    thickness: 1,
                    height: 2,
                  ),
                ),
              ],
            ),
            Dimens.boxHeight30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: Dimens.percentWidth(.4),
                  height: Dimens.fifty,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.four),
                      border: Border.all(
                        color: ColorsValue.borderColor,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetConstants.googleLogo,
                        width: Dimens.fiftyFive,
                        height: Dimens.thirtyFive,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: RouteManagement.goToPhoneSignUp,
                  child: Container(
                    width: Dimens.percentWidth(.4),
                    height: Dimens.fifty,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.four),
                        border: Border.all(
                          color: ColorsValue.borderColor,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          StringConstants.phone,
                          style: Styles.primaryBold18,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
}
