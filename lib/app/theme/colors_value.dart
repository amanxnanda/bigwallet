// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A list of custom color used in the application.
///
/// Will be ignored for test since all are static values and would not change.
abstract class ColorsValue {
  static const Map<int, Color> primaryColorSwatch = {
    50: Color.fromRGBO(132, 145, 93, 0.1),
    100: Color.fromRGBO(132, 145, 93, 0.2),
    200: Color.fromRGBO(132, 145, 93, 0.3),
    300: Color.fromRGBO(132, 145, 93, 0.4),
    400: Color.fromRGBO(132, 145, 93, 0.5),
    500: Color.fromRGBO(132, 145, 93, 0.6),
    600: Color.fromRGBO(132, 145, 93, 0.7),
    700: Color.fromRGBO(132, 145, 93, 0.8),
    800: Color.fromRGBO(132, 145, 93, 0.9),
    900: Color.fromRGBO(132, 145, 93, 1.0),
  };

  static const Color primaryColorRgb = Color.fromRGBO(132, 145, 93, 1);

  static const Color primaryColorLight1Rgbo = Color.fromRGBO(199, 61, 93, .1);

  static const Color primaryColor = Color(
    primaryColorHex,
  );

  static const Color lightGreyColor = Color(
    lightGrey,
  );

  static const Color lightGreyColor2 = Color(
    lightGreyColor2Hex,
  );

  static const Color textFieldColor = Color(
    formFieldColor,
  );

  static const Color hintColor = Color(
    fieldHintColor,
  );

  static const Color progressColor = Color(
    progressColorHex,
  );

  static const Color borderColor = Color(
    borderColorHex,
  );

  static const Color neonGreen = Color(
    neonGreenHex,
  );

  static const Color outlineColor = Color(outlineColorHex);

  static const Color imagePickerBgColor = Color(
    imagePickerBgHex,
  );

  static const Color blueColor = Color(
    blueColorHex,
  );

  static const Color secondaryColor = Color(
    secondaryColorHex,
  );

  static const Color gray22Color = Color(
    gray22ColorHex,
  );

  static const Color gray8Color = Color(
    gray8ColorHex,
  );

  static Color backgroundColor = Colors.black;

  static const int primaryColorHex = 0xffCC2B5E;

  static const int secondaryColorHex = 0xff753A88;

  static const int lightGreyColor2Hex = 0xFF43586B;

  static const int formFieldColor = 0xFFF5F5F5;

  static const int fieldHintColor = 0xFF43586B;

  static const int progressColorHex = 0xff0381FF;

  static const int lightGrey = 0xffBBC2DD;

  static const int borderColorHex = 0xffE4E5EB;

  static const int neonGreenHex = 0xff05BC28;

  static const int imagePickerBgHex = 0xffFCFCFF;

  static const int outlineColorHex = 0xffE2E6FA;

  static const int blueColorHex = 0xff0027FF;

  static const int gray22ColorHex = 0xff1C1924;

  static const int gray8ColorHex = 0xffA6A0BB;

  static const Color transparent = Color.fromARGB(0, 255, 255, 255);

  static Color themeOppositeColor() =>
      Get.isDarkMode ? Colors.white : backgroundColor;
}
