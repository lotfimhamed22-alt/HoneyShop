import 'package:flutter/material.dart';
import 'package:honeyshop/core/constants/breakpoints.dart';

class ScreenHelper {
  ScreenHelper._(); //you can not take an object
  static ScreenType typeOfDevice(double width) {
    if (width >= Breakpoints.tablet) return ScreenType.desktop;
    if (width >= Breakpoints.mobile) return ScreenType.tablet;
    return ScreenType.mobile;
  }

  static ScreenType currentWidthOfDevice(BuildContext context) {
    return typeOfDevice(MediaQuery.sizeOf(context).width); // current width
  }
}
