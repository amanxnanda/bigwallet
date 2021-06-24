import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';

class EducationLevelWidget extends StatelessWidget {
  const EducationLevelWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringConstants.selectEducationLevel,
          style: Styles.lightGrey15,
        ),
        Dimens.boxHeight10,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.three),
            border: Border.all(color: ColorsValue.borderColor),
          ),
          padding: Dimens.edgeInsets10_15_10_15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Styles.boldBlack20,
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
          StringConstants.uploadCertificates,
          style: Styles.lightGrey15,
        ),
        Dimens.boxHeight10,
        Row(
          children: [
            const EditPickImageWidget(),
            Dimens.boxWidth20,
            const EditPickImageWidget(),
          ],
        ),
      ],
    );
  }
}
