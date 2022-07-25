import 'package:flutter/material.dart';
import 'package:weather/app/utils/globals.dart';


// class App {
//   // late BuildContext context;
//   static void setSize(BuildContext context) {
//     gSize = MediaQuery.of(context).size;
//   }

//   static void setPaddings(BuildContext context) {
//     final double width = gSize.width;

//     final double baseSize = width * 0.04;

//     gTinyPadding = baseSize / 8; // ~2
//     gSmallPadding = baseSize / 4; // ~4
//     gMediumPadding = baseSize / 2; // ~8
//     gLargePadding = baseSize; // ~16
//     gVeryLargePadding = baseSize * 4; // ~64
//   }
// }

class MyUtility {
  BuildContext context;

  MyUtility(this.context) ;

  // static void setSize(BuildContext context) {
  //   gSize = MediaQuery.of(context).size;
  // }

  // static void setPaddings(BuildContext context) {
  //   final double width = gSize.width;

  //   final double baseSize = width * 0.04;

  //   gTinyPadding = baseSize / 8; // ~2
  //   gSmallPadding = baseSize / 4; // ~4
  //   gMediumPadding = baseSize / 2; // ~8
  //   gLargePadding = baseSize; // ~16
  //   gVeryLargePadding = baseSize * 4; // ~64
  // }

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}