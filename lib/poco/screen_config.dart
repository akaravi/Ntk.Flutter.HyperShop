import 'package:flutter/widgets.dart';

class ScreenConfig {
  static MediaQueryData _mediaQueryData;
  static double width;
  static double height;
  static double hBlocks;
  static double vBlocks;
  static double safeAreaTop;
  static double safeAreaButtom;
  static double safeAreaLeft;
  static double safeAreaRight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData.size.width;
    height = _mediaQueryData.size.height;
    hBlocks = width / 100;
    vBlocks = height / 100;
    safeAreaTop = 25;
    safeAreaButtom = 10;
    safeAreaLeft = 10;
    safeAreaRight = 10;
  }
}
