import 'package:flutter/material.dart';

class Mediaquery {
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
 
  static double getFontSize22(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 22 : 28;
  }

  static double getFontSize24(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 24 : 30;
  }

   static double getFontSize20(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 20 : 26;
  }

  static double getFontSize18(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 18 : 24; 
  }

  static double getFontSize16(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 16 : 22;
  }

  static double getFontSize14(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 14 : 20;
  }

  static double getFontSize12(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 12 : 18;
  }

  static double getFontSize10(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 10 : 16;
  }
  static double getFontSize8(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 8 : 14;
  }
  static double getFontSize26(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 26 : 32;
  }
  static double getFontSize28(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 28 : 34;
  }
  static double getFontSize30(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 30 : 36;
  }
  static double getFontSize32(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 32 : 38;
  }
  static double getFontSize34(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 34 : 40;
  }
  static double getFontSize36(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 36 : 42;
  }
  static double getFontSize38(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 38 : 44;
  }
  static double getFontSize40(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 40 : 46;
  }
  static double getFontSize42(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 42 : 48;
  }
  static double getFontSize44(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 44 : 50;
  }
   static double getImageSizeW40(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 40 : 140;
  }
   static double getImageSizeH40(BuildContext context) {
    double screenWidth = getScreenHeight(context);
    return screenWidth < 600 ? 40 : 140;
  }
   static double getImageSizeW24(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 22 : 35;
  }
   static double getImageSizeH24(BuildContext context) {
    double screenWidth = getScreenHeight(context);
    return screenWidth < 600 ? 22 : 30;
  }
}
