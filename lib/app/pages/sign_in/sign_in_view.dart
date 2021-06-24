import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        key: const Key('SignInView'),
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
                  'Welcome to',
                  style: Styles.blackBold50,
                ),
                GradientText(
                  'BigWallet',
                  style: Styles.blackBold50,
                ),
                Dimens.boxHeight10,
                ElevatedButton(
                  onPressed: RouteManagement.goToLogIn,
                  style: ElevatedButton.styleFrom(
                    primary: ColorsValue.gray22Color,
                    shape: const StadiumBorder(),
                    fixedSize: Size(
                      Dimens.hundred * 3,
                      Dimens.fifty,
                    ),
                  ),
                  child: GradientText(
                    'Already a member?',
                    style: Styles.boldBlack22,
                  ),
                ),
                Dimens.boxHeight10,
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
                      'Create a New Wallet',
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
