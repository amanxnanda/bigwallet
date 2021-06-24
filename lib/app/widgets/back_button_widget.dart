import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// A Back Button widget to handle navigation
/// for going back in screen
class BackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.centerLeft,
        child: InkWell(
          onTap: Get.back,
          child: Icon(
            Icons.arrow_back,
            size: Dimens.twenty + Dimens.eight,
            color: Colors.black,
          ),
        ),
      );
}
