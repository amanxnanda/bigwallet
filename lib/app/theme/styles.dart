import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:google_fonts/google_fonts.dart';

/// A chunk of styles used in the application.
/// Will be ignored for test since all are static values and would not change.
// coverage:ignore-file
abstract class Styles {
  static String baseFontFamily = GoogleFonts.barlow().fontFamily!;

  static RoundedRectangleBorder buttonShapeBorder = RoundedRectangleBorder(
    side: BorderSide(
      color: Colors.white,
      width: Dimens.one,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(
      Dimens.fifty,
    ),
  );

  static RoundedRectangleBorder border15 = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
      Dimens.fifteen,
    ),
  );

  static const LinearGradient linearGradient = LinearGradient(
    colors: <Color>[ColorsValue.primaryColor, ColorsValue.secondaryColor],
  );

  static ButtonThemeData buttonThemeData = ButtonThemeData(
      buttonColor: ColorsValue.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Dimens.fifty,
        ),
      ));

  // Different style used in the application

  static TextStyle lightGrey14 = TextStyle(
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.fourteen,
    color: ColorsValue.lightGreyColor2,
  );

  static TextStyle boldWhite16 = TextStyle(
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle white14 = TextStyle(
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontSize: Dimens.fourteen,
  );

  static TextStyle red13 = TextStyle(
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
    color: Colors.red,
    fontSize: Dimens.thirteen,
  );

  static TextStyle lightGrey15 = TextStyle(
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.fifteen,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
  );

  static TextStyle lightGrey20 = TextStyle(
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twenty,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
  );

  static TextStyle black18 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.eighteen,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
  );
  static TextStyle black20 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.twenty,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
  );
  static TextStyle boldBlack22 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.twenty + Dimens.two,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldWhite22 = TextStyle(
    color: Colors.white,
    fontSize: Dimens.twenty + Dimens.two,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldBlack20 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.twenty,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldBlack18 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.eighteen,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.bold,
  );
  static TextStyle primaryBold18 = TextStyle(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.eighteen,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.bold,
  );

  static TextStyle black16 = TextStyle(
    color: ColorsValue.hintColor,
    fontSize: Dimens.sixTeen,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
  );
  static TextStyle boldBlack15 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.fifteen,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.bold,
  );

  static TextStyle boldBlues15 = TextStyle(
    color: ColorsValue.blueColor,
    fontSize: Dimens.fifteen,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.bold,
  );

  static TextStyle black15 = TextStyle(
    color: Colors.black,
    fontSize: Dimens.fifteen,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
  );

  static TextStyle blackBold50 = GoogleFonts.barlow(
    color: Colors.black,
    fontSize: Dimens.fifty,
    fontWeight: FontWeight.bold,
  );

  static TextStyle lightGrey13 = TextStyle(
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.thirteen,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
  );

  static TextStyle blue13 = TextStyle(
    color: ColorsValue.progressColor,
    fontSize: Dimens.thirteen,
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.normal,
  );

  static TextStyle white15 = TextStyle(
    fontFamily: baseFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.fifteen,
    color: Colors.white,
  );

  static var outlineBorderRadius50 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.fifty,
      ),
    ),
    borderSide: BorderSide.none,
  );

  static var outlineBorderRadius5 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.five,
      ),
    ),
    borderSide: BorderSide.none,
  );

  static var outlineBorderRadius15 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.fifteen,
      ),
    ),
    borderSide: BorderSide.none,
  );

  static BoxDecoration pinPutDecoration = BoxDecoration(
    border: Border.all(color: ColorsValue.primaryColor),
    borderRadius: BorderRadius.circular(Dimens.three),
  );

  static var elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        boldWhite16,
      ),
      padding: MaterialStateProperty.all(
        Dimens.edgeInsets15,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Dimens.five,
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) => states.contains(MaterialState.disabled)
            ? ColorsValue.lightGreyColor
            : ColorsValue.primaryColor,
      ),
    ),
  );
}
