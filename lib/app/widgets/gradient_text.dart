import 'package:big_wallet/app/app.dart';
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  GradientText(
    this.text, {
    this.style = const TextStyle(color: Colors.white),
    this.textAlign,
  });

  final String text;
  final TextStyle style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: <Color>[ColorsValue.primaryColor, ColorsValue.secondaryColor],
      ).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style.copyWith(
          color: Colors.white,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
