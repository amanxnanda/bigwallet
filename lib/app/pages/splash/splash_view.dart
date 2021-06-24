import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// The splash view which will show the splash screen and perform the basic
/// ui work.
class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<SplashController>(
        builder: (_controller) => Scaffold(
          backgroundColor: Get.theme.backgroundColor,
          body: SizedBox(
              key: const Key('splash-image'),
              width: Dimens.percentWidth(1),
              height: Dimens.percentHeight(1),
              child: const Image(
                image: AssetImage(AssetConstants.splashImage),
              )),
        ),
      );
}
