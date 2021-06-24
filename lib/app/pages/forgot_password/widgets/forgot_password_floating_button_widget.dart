import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// A floating button widget for [ForgotPasswordView] which holds
/// reset button and error messeage if email id is not registered with us
class ForgotPasswordFloatingButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<ForgotPasswordController>(
        builder: (controller) => Padding(
          padding: Dimens.edgeInsets18_0_18_0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!controller.isEmailRegisteredWithUs) ...[
                Text(
                  StringConstants.emailNotLinked,
                  style: Styles.red13,
                  overflow: TextOverflow.visible,
                ),
                Dimens.boxHeight10,
              ],
              Obx(
                () => FormSubmitWidget(
                  key: const Key('ResetButton'),
                  opacity: controller.isResetButtonEnabled.value ? 1 : 0.5,
                  disableColor: ColorsValue.primaryColor,
                  padding: Dimens.edgeInsets15,
                  text: StringConstants.resetPassword.toUpperCase(),
                  textStyle: Styles.boldWhite16,
                  fixedSize: Size(
                    Dimens.percentWidth(1),
                    Dimens.fifty,
                  ),
                  onTap: controller.isResetButtonEnabled.value
                      ? controller.onResetPassword
                      : null,
                ),
              ),
            ],
          ),
        ),
      );
}
