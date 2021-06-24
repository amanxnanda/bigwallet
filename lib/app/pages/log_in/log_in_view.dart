import 'package:big_wallet/app/app.dart';
import 'package:flutter/material.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorsValue.backgroundColor,
        body: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.asset(
                AssetConstants.background_1,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  'Login',
                  style: Styles.blackBold50,
                ),
                Dimens.boxHeight60,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextFormField(
                    style: Styles.boldWhite22,
                    cursorColor: ColorsValue.primaryColor,
                    decoration: InputDecoration(
                      hintText: 'username',
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextFormField(
                    style: Styles.boldWhite22,
                    cursorColor: ColorsValue.primaryColor,
                    decoration: InputDecoration(
                      hintText: 'password',
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
                      'Continue',
                      style: Styles.boldWhite22,
                    ),
                  ),
                ),
                Dimens.boxHeight10,
                InkWell(
                  onTap: RouteManagement.goToForgotPassword,
                  child: GradientText(
                    'Forgot Password?',
                    style: Styles.black18.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
}
