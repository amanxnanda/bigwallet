import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        key: const Key('SignInView'),
        backgroundColor: ColorsValue.backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              SignInWidget(),
            ],
          ),
        ),
      );
}
