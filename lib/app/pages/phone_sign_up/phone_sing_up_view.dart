import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A phone sign up view so the user can sign up
/// their phone number
class PhoneSignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<PhoneSignUpController>(
        builder: (controller) => Scaffold(
          key: const Key('PhoneSignUpKey'),
          backgroundColor: ColorsValue.backgroundColor,
          body: SafeArea(
            child: ListView(
              shrinkWrap: true,
              padding: Dimens.edgeInsets18_0_18_0,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Dimens.boxHeight100,
                SvgPicture.asset(
                  AssetConstants.instaCareLogo,
                ),
                Dimens.boxHeight50,
                Text(
                  StringConstants.enterDetails,
                  style: Styles.lightGrey15,
                ),
                Dimens.boxHeight5,
                CountryPhoneField(
                  initialCountryCode: controller.initialCountryCode,
                  countryCodeTextColor: ColorsValue.progressColor,
                  dropDownArrowColor: ColorsValue.lightGreyColor,
                  autoValidate: true,
                  style: Styles.black18,
                  onChanged: controller.onChanged,
                  onCountryChanged: controller.onCountryChanged,
                ),
                Dimens.boxHeight30,
                SizedBox(
                  width: Dimens.percentWidth(1),
                  height: Dimens.fifty,
                  child: Obx(
                    () => FormSubmitWidget(
                      key: const Key('ContinueButton'),
                      opacity:
                          controller.isContinueButtonEnabled.value ? 1 : 0.5,
                      disableColor: ColorsValue.primaryColor,
                      padding: Dimens.edgeInsets15,
                      text: StringConstants.continuE.toUpperCase(),
                      textStyle: Styles.boldWhite16,
                      onTap: controller.isContinueButtonEnabled.value
                          ? controller.onContinue
                          : null,
                    ),
                  ),
                ),
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
                        ),
                      ),
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
                      onTap: RouteManagement.goToSignIn,
                      child: Container(
                        width: Dimens.percentWidth(.4),
                        height: Dimens.fifty,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimens.four),
                          border: Border.all(
                            color: ColorsValue.borderColor,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              StringConstants.email,
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
          ),
        ),
      );
}
