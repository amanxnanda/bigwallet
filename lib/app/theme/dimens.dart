import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Contains the dimensions and padding used
/// all over the application.
/// Will be ignored for test since all are static values and would not change.
// coverage:ignore-file
abstract class Dimens {
  static double sixTeen = 16.sp;
  static double nineteen = 19.sp;
  static double three = 3.sp;
  static double eight = 8.sp;
  static double zero = 0.sp;
  static double thirteen = 13.sp;
  static double eighteen = 18.sp;
  static double thirtySix = 36.sp;
  static double twentyEight = 28.sp;
  static double six = 6.sp;
  static double sixty = 60.sp;
  static double twentyTwo = 22.sp;
  static double fifty = 50.sp;
  static double one = 1.sp;
  static double twentyFour = 24.sp;
  static double twentyThree = 23.sp;
  static double thirtyNine = 39.sp;
  static double twentyFive = 25.sp;
  static double thirty = 30.sp;
  static double eighty = 80.sp;
  static double eightyFive = 85.sp;
  static double pointFive = 0.5.sp;
  static double pointEight = 0.8.sp;
  static double pointNine = 0.9.sp;
  static double twentySix = 26.sp;
  static double sixtyFour = 64.sp;
  static double twenty = 20.sp;
  static double ten = 10.sp;
  static double five = 5.sp;
  static double fifteen = 15.sp;
  static double four = 4.sp;
  static double two = 2.sp;
  static double fourteen = 14.sp;
  static double twelve = 12.sp;
  static double thirtyTwo = 32.sp;
  static double thirtyFive = 35.sp;
  static double seventy = 70.sp;
  static double fourty = 40.sp;
  static double fourtyFive = 45.sp;
  static double thirtyFour = 34.sp;
  static double seven = 7.sp;
  static double ninetyEight = 98.sp;
  static double ninetyFive = 95.sp;
  static double fiftyFive = 55.sp;
  static double fiftyFour = 54.sp;
  static double hundred = 100.sp;
  static double oneThirtyFive = 135.sp;
  static double oneHundredFifty = 150.sp;
  static double oneHundredTwenty = 120.sp;
  static double seventyEight = 78.sp;
  static double seventyFive = 75.sp;
  static double twoHundred = 200.sp;
  static double ninety = 90.sp;
  static double oneSeventyFive = 175.sp;
  static double threeSeventyFive = 375.sp;
  static double fiveSeventyFive = 575.sp;

  /// Get the height with the percent value of the screen height.
  static double percentHeight(double percentValue) => percentValue.sh;

  /// Get the width with the percent value of the screen width.
  static double percentWidth(double percentValue) => percentValue.sw;

  static EdgeInsets getEdgeInsets(
      double left,
      double top,
      double right,
      double bottom,
      ) =>
      EdgeInsets.fromLTRB(
        left,
        top,
        right,
        bottom,
      );
  static EdgeInsets edgeInsets24_0_24_10 = EdgeInsets.fromLTRB(
    twentyFour,
    zero,
    twentyFour,
    ten,
  );
  static EdgeInsets edgeInsets0_20_0_80 = EdgeInsets.fromLTRB(
    zero,
    twenty,
    zero,
    eighty,
  );
  static EdgeInsets edgeInsets15_10_15_10 = EdgeInsets.fromLTRB(
    fifteen,
    ten,
    fifteen,
    ten,
  );
  static EdgeInsets edgeInsets20_0_0_0 = EdgeInsets.fromLTRB(
    twenty,
    zero,
    zero,
    zero,
  );
  static EdgeInsets edgeInsets0_15_0_15 = EdgeInsets.fromLTRB(
    zero,
    fifteen,
    zero,
    fifteen,
  );
  static EdgeInsets edgeInsets20_14P_0_0 = EdgeInsets.fromLTRB(
    twenty,
    percentHeight(0.14),
    zero,
    zero,
  );
  static EdgeInsets edgeInsets20_10P_20_20 = EdgeInsets.fromLTRB(
    twenty,
    percentHeight(0.10),
    twenty,
    twenty,
  );
  static EdgeInsets edgeInsets20_10_20_10 = EdgeInsets.fromLTRB(
    twenty,
    ten,
    twenty,
    ten,
  );
  static EdgeInsets edgeInsets0_80_0_100 = EdgeInsets.fromLTRB(
    zero,
    eighty,
    zero,
    hundred,
  );
  static EdgeInsets edgeInsets50_10_50_10 = EdgeInsets.fromLTRB(
    fifty,
    ten,
    fifty,
    ten,
  );
  static EdgeInsets edgeInsets25_20_25_20 = EdgeInsets.fromLTRB(
    twentyFive,
    twenty,
    twentyFive,
    twenty,
  );
  static EdgeInsets edgeInsets15_0_15_20 = EdgeInsets.fromLTRB(
    fifteen,
    zero,
    fifteen,
    twenty,
  );
  static EdgeInsets edgeInsets0_0_10_0 = EdgeInsets.fromLTRB(
    zero,
    zero,
    ten,
    zero,
  );
  static EdgeInsets edgeInsets24_0_24_0 = EdgeInsets.fromLTRB(
    twentyFour,
    zero,
    twentyFour,
    zero,
  );
  static EdgeInsets edgeInsets0_10_0_0 = EdgeInsets.fromLTRB(
    zero,
    ten,
    zero,
    zero,
  );
  static EdgeInsets edgeInsets0_0_0_15 = EdgeInsets.fromLTRB(
    zero,
    zero,
    zero,
    fifteen,
  );
  static EdgeInsets edgeInsets0_0_0_5 = EdgeInsets.fromLTRB(
    zero,
    zero,
    zero,
    five,
  );
  static EdgeInsets edgeInsets20_0_20_0 = EdgeInsets.fromLTRB(
    twenty,
    zero,
    twenty,
    zero,
  );
  static EdgeInsets edgeInsets20_0_5_0 = EdgeInsets.fromLTRB(
    twenty,
    zero,
    five,
    zero,
  );
  static EdgeInsets edgeInsets20_0_20_20 = EdgeInsets.fromLTRB(
    twenty,
    zero,
    twenty,
    twenty,
  );
  static EdgeInsets edgeInsets0_5_0_0 = EdgeInsets.fromLTRB(
    zero,
    five,
    zero,
    zero,
  );
  static EdgeInsets edgeInsets10_5_10_5 = EdgeInsets.fromLTRB(
    ten,
    five,
    ten,
    five,
  );
  static EdgeInsets edgeInsets15_15_15_15 = EdgeInsets.fromLTRB(
    fifteen,
    fifteen,
    fifteen,
    fifteen,
  );
  static EdgeInsets edgeInsets20_120_20_50 = EdgeInsets.fromLTRB(
    twenty,
    oneHundredTwenty,
    twenty,
    fifty,
  );
  static EdgeInsets edgeInsets24_0_40_34 = EdgeInsets.fromLTRB(
    fourty,
    zero,
    fourty,
    thirtyFour,
  );
  static EdgeInsets edgeInsets0_30_0_50 = EdgeInsets.fromLTRB(
    zero,
    thirty,
    zero,
    fifty,
  );
  static EdgeInsets edgeInsets0_15_0_50 = EdgeInsets.fromLTRB(
    zero,
    fifteen,
    zero,
    fifty,
  );
  static EdgeInsets edgeInsets30_0_30_30 = EdgeInsets.fromLTRB(
    thirty,
    zero,
    thirty,
    thirty,
  );
  static EdgeInsets edgeInsets40_0_40_0 = EdgeInsets.fromLTRB(
    fourty,
    zero,
    fourty,
    zero,
  );
  static EdgeInsets edgeInsets50_0_50_0 = EdgeInsets.fromLTRB(
    fifty,
    zero,
    fifty,
    zero,
  );
  static EdgeInsets edgeInsets0_54_0_0 = EdgeInsets.fromLTRB(
    zero,
    fiftyFour,
    zero,
    zero,
  );
  static EdgeInsets edgeInsets50_30_50_0 = EdgeInsets.fromLTRB(
    fifty,
    thirty,
    fifty,
    zero,
  );
  static EdgeInsets edgeInsets10_0_10_5 = EdgeInsets.fromLTRB(
    ten,
    zero,
    ten,
    five,
  );
  static EdgeInsets edgeInsets10_0_10_0 = EdgeInsets.fromLTRB(
    ten,
    zero,
    ten,
    zero,
  );
  static EdgeInsets edgeInsets0_10P_0_10 = EdgeInsets.fromLTRB(
    zero,
    percentHeight(0.10),
    zero,
    five,
  );
  static EdgeInsets edgeInsets0_0_0_20 = EdgeInsets.fromLTRB(
    zero,
    zero,
    zero,
    twenty,
  );
  static EdgeInsets edgeInsets0_0_0_80 = EdgeInsets.fromLTRB(
    zero,
    zero,
    zero,
    eighty,
  );
  static EdgeInsets edgeInsets0_12P_0_80 = EdgeInsets.fromLTRB(
    zero,
    percentHeight(0.12),
    zero,
    eighty,
  );
  static EdgeInsets edgeInsets0_14P_0_80 = EdgeInsets.fromLTRB(
    zero,
    percentHeight(0.14),
    zero,
    eighty,
  );
  static EdgeInsets edgeInsets90_0_1_0 = EdgeInsets.fromLTRB(
    ninety,
    zero,
    one,
    zero,
  );
  static EdgeInsets edgeInsets10_5_10_10 = EdgeInsets.fromLTRB(
    ten,
    five,
    ten,
    ten,
  );
  static EdgeInsets edgeInsets10_0_0_0 = EdgeInsets.fromLTRB(
    ten,
    zero,
    zero,
    zero,
  );
  static EdgeInsets edgeInsets18_0_18_0 = EdgeInsets.fromLTRB(
    eighteen,
    zero,
    eighteen,
    zero,
  );
  static EdgeInsets edgeInsets5_0_5_0 = EdgeInsets.fromLTRB(
    five,
    zero,
    five,
    zero,
  );
  static EdgeInsets edgeInsets18_10_18_10 = EdgeInsets.fromLTRB(
    eighteen,
    ten,
    eighteen,
    ten,
  );
  static EdgeInsets edgeInsets0_0_50_0 = EdgeInsets.fromLTRB(
    zero,
    zero,
    fifty,
    zero,
  );
   static EdgeInsets edgeInsets10_15_10_15 = EdgeInsets.fromLTRB(
    ten,
    fifteen,
    ten,
    fifteen,
  );
  static EdgeInsets edgeInsets15 = EdgeInsets.all(
    fifteen,
  );
  static EdgeInsets edgeInsets2 = EdgeInsets.all(
    two,
  );
  static EdgeInsets edgeInsets5 = EdgeInsets.all(
    five,
  );
  static EdgeInsets edgeInsetsTopTwelvePercent = EdgeInsets.only(
    top: percentHeight(0.12),
  );
  static EdgeInsets edgeInsets10 = EdgeInsets.all(
    ten,
  );
  static EdgeInsets edgeInsets40 = EdgeInsets.all(
    fourty,
  );
  static EdgeInsets edgeInsets16 = EdgeInsets.all(
    sixTeen,
  );
  static EdgeInsets edgeInsets20 = EdgeInsets.all(
    twenty,
  );
  static EdgeInsets edgeInsets30 = EdgeInsets.all(
    thirty,
  );
  static SizedBox boxHeight10 = SizedBox(
    height: ten,
  );
  static SizedBox boxHeight5 = SizedBox(
    height: five,
  );
  static SizedBox boxHeight1 = SizedBox(
    height: one,
  ); 
  static SizedBox boxHeight3 = SizedBox(
    height: three,
  );
  static SizedBox boxHeight32 = SizedBox(
    height: thirtyTwo,
  );
  static SizedBox boxHeight35 = SizedBox(
    height: thirtyFive,
  );
  static SizedBox boxHeight16 = SizedBox(
    height: sixTeen,
  );
  static SizedBox boxHeight30 = SizedBox(
    height: thirty,
  );
  static SizedBox boxHeight40 = SizedBox(
    height: fourty,
  );
  static SizedBox boxWidth12 = SizedBox(
    width: twelve,
  );
  static SizedBox boxWidth8 = SizedBox(
    width: eight,
  );
  static SizedBox boxWidth10 = SizedBox(
    width: ten,
  );
  static SizedBox boxWidth1 = SizedBox(
    width: one,
  );
  static SizedBox boxWidth2 = SizedBox(
    width: two,
  );
  static SizedBox boxWidth20 = SizedBox(
    width: twenty,
  );
  static SizedBox boxHeight20 = SizedBox(
    height: twenty,
  );
  static SizedBox boxHeight25 = SizedBox(
    height: twentyFive,
  );
  static SizedBox boxHeight15 = SizedBox(
    height: fifteen,
  );
  static SizedBox boxWidth15 = SizedBox(
    width: fifteen,
  );
  static SizedBox boxHeight26 = SizedBox(
    height: twentySix,
  );
  static SizedBox boxHeight50 = SizedBox(
    height: fifty,
  );
   static SizedBox boxHeight100 = SizedBox(
    height: hundred,
  );
  static SizedBox boxHeight70 = SizedBox(
    height: seventy,
  );
  static SizedBox box0 = const SizedBox.shrink();
}
