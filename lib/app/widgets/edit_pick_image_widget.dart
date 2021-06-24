import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';

/// container widget with edit icon at bottom-right corner
class EditPickImageWidget extends StatelessWidget {
  const EditPickImageWidget({
    Key? key,
    this.onTap,
    this.image,
  }) : super(key: key);
  final VoidCallback? onTap;
  final DecorationImage? image;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: Dimens.hundred,
              width: Dimens.hundred,
              decoration: BoxDecoration(
                color: ColorsValue.imagePickerBgColor,
                borderRadius: BorderRadius.circular(Dimens.five),
                border: Border.all(
                  color: ColorsValue.borderColor,
                ),
                image: image,
              ),
              child: image == null
                  ? const Icon(
                      Icons.image_outlined,
                      color: ColorsValue.outlineColor,
                    )
                  : null,
            ),
            Positioned(
              bottom: -Dimens.five,
              right: -Dimens.five,
              child: Image.asset(
                AssetConstants.editIcon,
                height: Dimens.twentyFive,
                width: Dimens.twentyFive,
              ),
            ),
          ],
        ),
      );
}
