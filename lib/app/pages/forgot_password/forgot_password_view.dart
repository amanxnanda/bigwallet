import 'package:big_wallet/app/app.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorsValue.backgroundColor,
        body: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.asset(
                AssetConstants.background_2,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  'Forgot\nPassword',
                  style: Styles.blackBold50,
                  textAlign: TextAlign.center,
                ),
                Dimens.boxHeight60,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextFormField(
                    style: Styles.boldWhite22,
                    cursorColor: ColorsValue.primaryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'email',
                      hintStyle: Styles.boldWhite22.copyWith(
                        color: ColorsValue.gray8Color,
                      ),
                      fillColor: ColorsValue.gray22Color,
                      filled: true,
                      contentPadding: Dimens.edgeInsets16,
                      border: Styles.outlineBorderRadius15,
                    ),
                  ),
                ),
                Dimens.boxHeight20,
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: Styles.linearGradient,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      primary: Colors.transparent,
                      elevation: 0,
                      alignment: Alignment.center,
                      fixedSize: Size(
                        Dimens.hundred * 3,
                        Dimens.fifty,
                      ),
                    ),
                    child: Text(
                      'Send Verification',
                      style: Styles.boldWhite22,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
}
