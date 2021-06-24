import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

class EducationalPageWidget extends StatelessWidget {
  const EducationalPageWidget({Key? key}) : super(key: key);

  static const educationalPageWidgetKey = Key('EducationalPageWidgetKey');

  @override
  Widget build(BuildContext context) => GetBuilder<PersonalDetailsController>(
        builder: (controller) => ListView(
          key: educationalPageWidgetKey,
          shrinkWrap: true,
          padding: Dimens.edgeInsets18_0_18_0,
          children: [
            Dimens.boxHeight50,
            Text(
              StringConstants.educationAndExperience,
              style: Styles.boldBlack22,
            ),
            Dimens.boxHeight25,
            EducationLevelWidget(title: StringConstants.mscNursing),
            Dimens.boxHeight25,
            EducationLevelWidget(title: StringConstants.bscNursing),
            Dimens.boxHeight25,
            InkWell(
              onTap: () {},
              child: Text(
                StringConstants.educationLevel,
                style: Styles.boldBlues15,
              ),
            ),
            Dimens.boxHeight25,
            Text(
              StringConstants.selectSkills,
              style: Styles.lightGrey15,
            ),
            Dimens.boxHeight10,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.three),
                border: Border.all(color: ColorsValue.borderColor),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringConstants.selectSkills,
                    style: Styles.lightGrey20,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ColorsValue.borderColor,
                    size: Dimens.twenty,
                  )
                ],
              ),
            ),
            Dimens.boxHeight15,
            Text(
              StringConstants.validUpto,
              style: Styles.lightGrey15,
            ),
            Dimens.boxHeight10,
            FormFieldWidget(
              key: const Key('dob-field'),
              autoFocus: false,
              isFilled: true,
              contentPadding: Dimens.edgeInsets16,
              fillColor: ColorsValue.backgroundColor,
              errorStyle: Styles.black16,
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.datetime,
              // errorText: controller.dobErrorText,
              formBorder: Styles.outlineBorderRadius5,
              formStyle: Styles.boldBlack18,
              onChange: (value) {},
              //  controller.onDOBchange,
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
              StringConstants.uploadCertificates,
              style: Styles.lightGrey15,
            ),
            Dimens.boxHeight10,
            const EditPickImageWidget(),
            Dimens.boxHeight15,
            InkWell(
              onTap: () {},
              child: Text(
                StringConstants.competenceDetails,
                style: Styles.boldBlues15,
              ),
            ),
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
