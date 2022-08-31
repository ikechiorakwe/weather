import 'package:flutter/material.dart';
import 'package:weather/app/utils/globals.dart';

class MyUtility {
  BuildContext context;

  MyUtility(this.context) ;

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}