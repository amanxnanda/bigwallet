import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';

/// A no internet widget which will be shown if network connection is not
/// available.
class NoInternetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black12,
        body: Padding(
          padding: Dimens.edgeInsets15_15_15_15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringConstants.noInternet,
                textAlign: TextAlign.center,
                style: Styles.lightGrey14,
              ),
            ],
          ),
        ),
      );
}
