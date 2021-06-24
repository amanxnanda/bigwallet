import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:big_wallet/domain/domain.dart';
import 'package:get/get.dart';

/// this is the first page for [PersonalDetailsView]'s page view
/// user put all their personal information here
class PersonalPageWidget extends StatelessWidget {
  const PersonalPageWidget({
    Key? key,
  }) : super(key: key);

  static const personalPageWidgetKey = Key('PersonalPageWidgetKey');

  @override
  Widget build(BuildContext context) => GetBuilder<PersonalDetailsController>(
        builder: (controller) => ListView(
          key: personalPageWidgetKey,
          shrinkWrap: true,
          controller: controller.scrollController,
          padding: Dimens.edgeInsets18_0_18_0,
          children: [
            Dimens.boxHeight50,
            Text(
              StringConstants.personalDetails,
              style: Styles.boldBlack22,
            ),
            Dimens.boxHeight15,
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: controller.userImage ??
                      const AssetImage(
                        AssetConstants.userAvatar,
                      ),
                  backgroundColor: Colors.transparent,
                  radius: Dimens.fifty,
                ),
                Dimens.boxWidth15,
                InkWell(
                  onTap: controller.onChangePhoto,
                  child: Text(
                    StringConstants.changePhoto,
                    style: Styles.blue13,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConstants.firstName,
                        style: Styles.lightGrey15,
                      ),
                      Dimens.boxHeight5,
                      FormFieldWidget(
                        key: const Key('first-name-field'),
                        textEditingController: controller.firstNameController,
                        autoFocus: false,
                        isFilled: true,
                        isObscureText: false,
                        contentPadding: Dimens.edgeInsets16,
                        fillColor: ColorsValue.backgroundColor,
                        errorStyle: Styles.black16,
                        textInputAction: TextInputAction.next,
                        errorText: controller.firstNameErrorText,
                        formBorder: Styles.outlineBorderRadius5,
                        formStyle: Styles.boldBlack18,
                        onChange: controller.onFirstNameChange,
                      )
                    ],
                  ),
                ),
                Dimens.boxWidth20,
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConstants.lastName,
                        style: Styles.lightGrey15,
                      ),
                      Dimens.boxHeight5,
                      FormFieldWidget(
                        key: const Key('last-name-field'),
                        textEditingController: controller.lastNameController,
                        autoFocus: false,
                        isFilled: true,
                        isObscureText: false,
                        contentPadding: Dimens.edgeInsets16,
                        fillColor: ColorsValue.backgroundColor,
                        errorStyle: Styles.black16,
                        textInputAction: TextInputAction.next,
                        errorText: controller.lastNameErrorText,
                        formBorder: Styles.outlineBorderRadius5,
                        formStyle: Styles.boldBlack18,
                        onChange: controller.onLastNameChange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Dimens.boxHeight15,
            Text(
              StringConstants.phoneNumber,
              style: Styles.lightGrey15,
            ),
            Dimens.boxHeight5,
            CountryPhoneField(
              initialCountryCode: controller.initialCountryCode,
              controller: controller.phoneNumberController,
              countryCodeTextColor: ColorsValue.progressColor,
              dropDownArrowColor: ColorsValue.lightGreyColor,
              errorText: controller.phoneErrortext,
              autoValidate: true,
              style: Styles.boldBlack18,
              onChanged: controller.onPhoneChange,
              onCountryChanged: controller.onCountryChanged,
              textInputAction: TextInputAction.next,
            ),
            Dimens.boxHeight15,
            Text(
              StringConstants.emailAddress,
              style: Styles.lightGrey15,
            ),
            Dimens.boxHeight5,
            FormFieldWidget(
              key: const Key('email-field'),
              textEditingController: controller.emailController,
              autoFocus: false,
              isFilled: true,
              isObscureText: false,
              contentPadding: Dimens.edgeInsets16,
              fillColor: ColorsValue.backgroundColor,
              errorStyle: Styles.black16,
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.emailAddress,
              errorText: controller.emailErrorText,
              formBorder: Styles.outlineBorderRadius5,
              formStyle: Styles.boldBlack18,
              onChange: controller.checkIfEmailIsValid,
            ),
            Dimens.boxHeight3,
            Obx(
              () => controller.isEmailVerified.value
                  ? Row(
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: ColorsValue.neonGreen,
                          size: Dimens.fifteen,
                        ),
                        Dimens.boxWidth2,
                        Text(
                          StringConstants.verified,
                          style: Styles.black15.copyWith(
                            color: ColorsValue.neonGreen,
                          ),
                        ),
                      ],
                    )
                  : Dimens.boxHeight5,
            ),
            Dimens.boxHeight15,
            Text(
              StringConstants.dateOfBirth,
              style: Styles.lightGrey15,
            ),
            Dimens.boxHeight5,
            FormFieldWidget(
              key: const Key('dob-field'),
              textEditingController: controller.dobController,
              autoFocus: false,
              isFilled: true,
              contentPadding: Dimens.edgeInsets16,
              fillColor: ColorsValue.backgroundColor,
              errorStyle: Styles.black16,
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.datetime,
              errorText: controller.dobErrorText,
              formBorder: Styles.outlineBorderRadius5,
              formStyle: Styles.boldBlack18,
              onChange: controller.onDOBchange,
              suffixIcon: const Icon(
                Icons.date_range_outlined,
                color: ColorsValue.lightGreyColor,
              ),
              suffixIconConstraints: BoxConstraints.tightFor(
                width: Dimens.thirty + Dimens.three,
              ),
            ),
            Dimens.boxHeight15,
            Text(
              StringConstants.address,
              style: Styles.lightGrey15,
            ),
            Dimens.boxHeight5,
            FormFieldWidget(
              key: const Key('address-field'),
              textEditingController: controller.addressController,
              focusNode: controller.addressFocusNode,
              autoFocus: false,
              isFilled: true,
              isObscureText: false,
              contentPadding: Dimens.edgeInsets16,
              fillColor: ColorsValue.backgroundColor,
              errorStyle: Styles.black16,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.streetAddress,
              errorText: controller.addressErrorText,
              formBorder: Styles.outlineBorderRadius5,
              formStyle: Styles.boldBlack18,
              onChange: controller.onAdrressChange,
              suffixIcon: Icon(
                Icons.arrow_forward_ios,
                color: ColorsValue.lightGreyColor,
                size: Dimens.twenty,
              ),
              suffixIconConstraints: BoxConstraints.tightFor(
                width: Dimens.twentyFive,
              ),
            ),
            Dimens.boxHeight15,
            Text(
              StringConstants.doYouDriveVehicle,
              style: Styles.lightGrey15,
            ),
            Dimens.boxHeight5,
            Obx(
              () => Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio(
                          value: YesOrNo.yes,
                          groupValue: controller.groupValue,
                          onChanged: controller.onYesOrNoChanged,
                          activeColor: ColorsValue.blueColor,
                        ),
                        Text(
                          StringConstants.yes,
                          style: Styles.boldBlack18,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio(
                          value: YesOrNo.no,
                          groupValue: controller.groupValue,
                          onChanged: controller.onYesOrNoChanged,
                          activeColor: ColorsValue.blueColor,
                        ),
                        Text(
                          StringConstants.no,
                          style: Styles.boldBlack18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Dimens.boxHeight15,
            if (controller.groupValue != null &&
                controller.groupValue == YesOrNo.yes) ...[
              Text(
                StringConstants.uploadDrivingLicense,
                style: Styles.lightGrey15,
              ),
              Dimens.boxHeight10,
              Row(
                children: [
                  EditPickImageWidget(
                    onTap: controller.getImagePathFromDevice,
                  ),
                  Dimens.boxWidth20,
                  EditPickImageWidget(
                    onTap: controller.getImagePathFromDevice,
                  ),
                ],
              ),
            ],
            Dimens.boxHeight25,
            FormSubmitWidget(
              key: const Key('NextButton'),
              opacity: controller.isNextButtonEnabled ? 1 : 0.5,
              disableColor: ColorsValue.primaryColor,
              padding: Dimens.edgeInsets15,
              text: StringConstants.next.toUpperCase(),
              textStyle: Styles.boldWhite16,
              fixedSize: Size(
                Dimens.percentWidth(Dimens.pointNine),
                Dimens.fifty,
              ),
              onTap: controller.isNextButtonEnabled ? controller.onNext : null,
            ),
            Dimens.boxHeight25,
          ],
        ),
      );
}
