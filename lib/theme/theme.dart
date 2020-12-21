import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/poco/screen_config.dart';

final String privacyTermUrl = 'http://ntk.ir/privacy';
final String baseApiUrl = 'https://apicms.ir/api/v1/';
final String acceptTermDescription =
    'قبول کلیه شرایط و قوانین جمهوری اسلامی قبول کلیه شرایط و قوانین جمهوری اسلامی قبول کلیه شرایط و قوانین جمهوری اسلامی قبول کلیه شرایط و قوانین جمهوری اسلامی';
final bool showAcceptTerm = true;
final String tokenPackageName = 'ntk.android.hypershop.app67';
final String lookupAddressForCheckInternetConnection = '';
final int currentAppVersion = 1;

final double graphicDesignWidth = 1440;
final double graphicDesignHeight = 2960;
final double topBasePaddingValue = 20.0;
EdgeInsets topBasePaddingEdge() => EdgeInsets.only(top: topBasePaddingValue);

Widget topBasePadding() {
  return Padding(
    padding: EdgeInsets.only(top: topBasePaddingValue),
  );
}

Widget topPaddingWithPercent({double percent = 1.0}) {
  return Padding(
    padding: EdgeInsets.only(top: ScreenConfig.height * percent / 100),
  );
}

Widget emptyChild({double heightSize = 5}) {
  return Text('', style: TextStyle(fontSize: heightSize));
}

double heightPercentage(double percent) {
  return ScreenConfig.height * percent / graphicDesignHeight;
}

double widthPercentage(double percent) {
  return ScreenConfig.width * percent / graphicDesignWidth;
}

Widget rowWithFree(
    {int leftSize = 1,
    int centerSize = 1,
    int rightSize = 1,
    Widget left,
    Widget center,
    Widget right}) {
  if (left == null) left = emptyChild();
  if (right == null) right = emptyChild();
  if (center == null) center = emptyChild();
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Expanded(flex: leftSize, child: left),
      Expanded(flex: centerSize, child: center),
      Expanded(flex: rightSize, child: right),
    ],
  );
}

Widget rowWithFree2(
    {int leftSize = 1, int rightSize = 1, Widget left, Widget right}) {
  if (left == null) left = emptyChild();
  if (right == null) right = emptyChild();
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Expanded(flex: leftSize, child: left),
      Expanded(flex: rightSize, child: right),
    ],
  );
}

Widget line(Color color, double height, double marginTop) {
  return Expanded(
      child: Container(
    margin: EdgeInsets.only(top: marginTop),
    height: height,
    color: color,
  ));
}

Widget freeSpaceMaker(int flexSize) {
  return Expanded(
    flex: flexSize,
    child: Text(''),
  );
}

MaterialColor colorFFFFFF = MaterialColor(0xFFffffff, <int, Color>{});
MaterialColor color9D9D9D = MaterialColor(0xFF9D9D9D, <int, Color>{});
MaterialColor color393939 = MaterialColor(0xFF393939, <int, Color>{});
MaterialColor colorD07D00 = MaterialColor(0xFFD07D00, <int, Color>{});
MaterialColor color808080 = MaterialColor(0xFF808080, <int, Color>{});
MaterialColor colorCECECE = MaterialColor(0xFFCECECE, <int, Color>{});
MaterialColor color595959 = MaterialColor(0xFF595959, <int, Color>{});
MaterialColor color257EEA = MaterialColor(0xFF257EEA, <int, Color>{});
MaterialColor color333333 = MaterialColor(0xFF333333, <int, Color>{});
MaterialColor colorBABABA = MaterialColor(0xFFBABABA, <int, Color>{});
MaterialColor color000F25 = MaterialColor(0xFF000F25, <int, Color>{});
MaterialColor color000000 = MaterialColor(0xFF000000, <int, Color>{});
MaterialColor color262626 = MaterialColor(0xFF262626, <int, Color>{});
MaterialColor color004DAB = MaterialColor(0xFF004DAB, <int, Color>{});
MaterialColor color0060D6 = MaterialColor(0xFF0060D6, <int, Color>{});
MaterialColor colorDCDCDC = MaterialColor(0xFFDCDCDC, <int, Color>{});
MaterialColor color1573E6 = MaterialColor(0xFF1573E6, <int, Color>{});
MaterialColor color707070 = MaterialColor(0xFF707070, <int, Color>{});
MaterialColor color1C1C1C = MaterialColor(0xFF1C1C1C, <int, Color>{});
MaterialColor color3E3E3E = MaterialColor(0xFF3E3E3E, <int, Color>{});
MaterialColor color0D0D0D = MaterialColor(0xFF0D0D0D, <int, Color>{});
MaterialColor colorC26B00 = MaterialColor(0xFFC26B00, <int, Color>{});
MaterialColor colorF29421 = MaterialColor(0xFFF29421, <int, Color>{});
MaterialColor colorFF0000 = MaterialColor(0xFFFF0000, <int, Color>{});
MaterialColor colorFFEE00 = MaterialColor(0xFFFFEE00, <int, Color>{});
MaterialColor colorCF5A00 = MaterialColor(0xFFCF5A00, <int, Color>{});
MaterialColor color00824E = MaterialColor(0xFF00824E, <int, Color>{});
MaterialColor color036D42 = MaterialColor(0xFF036D42, <int, Color>{});
MaterialColor colorB53CA9 = MaterialColor(0xFFB53CA9, <int, Color>{});
MaterialColor color8D007F = MaterialColor(0xFF8D007F, <int, Color>{});
MaterialColor color4D4D4D = MaterialColor(0xFF4D4D4D, <int, Color>{});
MaterialColor color9B002F = MaterialColor(0xFF9B002F, <int, Color>{});

MaterialColor blue = MaterialColor(0xFF4bb5ff, <int, Color>{
  50: Color(0xFF4bb5ff),
  100: Color(0xFFadf6ff),
  200: Color(0xFF005e9e),
  300: Color(0xFF002945),
  400: Color(0xFF007fd6),
});

MaterialColor white = MaterialColor(0xFFffffff, <int, Color>{
  50: Color(0xFFffffff),
});
MaterialColor btnGreen = MaterialColor(
    0xFF1dc133, <int, Color>{50: Color(0xFFe6ffe9), 100: Color(0xFFe5ffe9)});
MaterialColor btnRed = MaterialColor(
    0xFFff0030, <int, Color>{50: Color(0xFFffd0d9), 100: Color(0xFFffd7e3)});
MaterialColor btnGray = MaterialColor(0xFFefefef, <int, Color>{});

MaterialColor btnOrange = MaterialColor(0xFFff6d00, <int, Color>{
  50: Color(0xFFff6d00),
  100: Color(0xFFff6d00),
});

MaterialColor colorSplashBackground = MaterialColor(0xFF000f25, <int, Color>{
  50: Color(0xFF00275f),
});
MaterialColor colorListBackground = MaterialColor(0xFFcfdae8, <int, Color>{
  50: Color(0xFFe4e9ef),
  50: Color(0xFFa3b2c5),
});

MaterialColor colorBlueMiddle = MaterialColor(0xFF0057c1, <int, Color>{
  50: Color(0xFF0073ff),
  100: Color(0xFF00377a),
});

MaterialColor colorBlueLight = MaterialColor(0xFF21b3ff, <int, Color>{
  50: Color(0xFF69ccff),
  100: Color(0xFF0078b7),
  200: Color(0xFF00419e),
});

MaterialColor gray = MaterialColor(0xFFdbdbdb, <int, Color>{
  50: Color(0xFFdbdbdb),
  100: Color(0xFFe9e9e9),
  200: Color(0xFF898989),
  300: Color(0xFFcbcbcb)
});

MaterialColor red = MaterialColor(0xFFdbdbdb, <int, Color>{
  50: Colors.red,
});

MaterialColor gold = MaterialColor(0xFFdbdbdb, <int, Color>{
  50: Color(0xFFffcc00),
});

MaterialColor orange = MaterialColor(0xFFfe9e47, <int, Color>{
  50: Color(0xFFfe9e47),
  100: Color(0xFFfe9e47),
});
MaterialColor green = MaterialColor(0xFF00b157, <int, Color>{
  50: Color(0xFF00b157),
  100: Color(0xFF006835),
});

MaterialColor black = MaterialColor(0xff000000, const <int, Color>{
  50: Colors.black,
  100: Colors.black,
  200: Colors.black,
  300: Colors.black,
  400: Colors.black,
  500: Colors.black,
  600: Colors.black,
  700: Colors.black,
  800: Colors.black,
  900: Colors.black,
});

Color withOpacity(Color color, double opacity) {
  return Color.fromRGBO(color.red, color.green, color.blue, opacity);
}

TextStyle textStyleRegular({Color color, double size}) {
  if (color == null) color = colorBABABA;
  if (size == null) size = 12;
  return (TextStyle(
    fontFamily: 'vazirMedium',
    fontSize: size,
    color: color,
    fontWeight: FontWeight.w300,
  ));
}

TextStyle textStyleMedium({Color color, double size}) {
  if (color == null) color = colorBABABA;
  if (size == null) size = 12;
  return (TextStyle(
    fontFamily: 'vazirMedium',
    fontSize: size,
    color: color,
    fontWeight: FontWeight.w600,
  ));
}

TextStyle textStyleBold({Color color, double size}) {
  if (color == null) color = colorBABABA;
  if (size == null) size = 12;
  return (TextStyle(
    fontFamily: 'vazirBold',
    fontSize: size,
    color: color,
    fontWeight: FontWeight.w900,
  ));
}

TextStyle textStyleNumberRegular({Color color, double size}) {
  if (color == null) color = colorBABABA;
  if (size == null) size = 12;
  return (TextStyle(
    fontFamily: 'vazirfd',
    fontSize: size,
    color: color,
    fontWeight: FontWeight.w100,
  ));
}

TextStyle textStyleNumberMedium({Color color, double size}) {
  if (color == null) color = colorBABABA;
  if (size == null) size = 12;
  return (TextStyle(
    fontFamily: 'vazirfd',
    fontSize: size,
    color: color,
    fontWeight: FontWeight.w500,
  ));
}

TextStyle textStyleNumberBold({Color color, double size}) {
  if (color == null) color = colorBABABA;
  if (size == null) size = 12;
  return (TextStyle(
    fontFamily: 'vazirfd',
    fontSize: size,
    color: color,
    fontWeight: FontWeight.w700,
  ));
}

InputDecoration usernameDecoration({String errorText = ''}) {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: colorBlueLight[100],
        width: 0.8,
        style: BorderStyle.solid,
      ),
      //gapPadding: ThemeColor.getPercentageDisplayWidth(5)
    ),
    contentPadding: EdgeInsets.only(left: 15, top: 5, right: 0, bottom: 5),
    suffixIcon: Icon(
      FontAwesomeIcons.mobileAlt,
      color: colorBlueLight[100],
      size: 20,
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: colorBlueLight[200], width: 0.8)),
    hintText: '   شماره موبایل خود را وارد کنید',
    hintStyle: textStyleRegular(color: colorBlueLight[100], size: 14),
    errorText: errorText,
    errorStyle: textStyleRegular(color: colorBlueLight[100], size: 11),
  );
}

InputDecoration smsDataDecoration({String errorText = ''}) {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: colorBlueLight[100],
        width: 0.8,
        style: BorderStyle.solid,
      ),
      //gapPadding: ThemeColor.getPercentageDisplayWidth(5)
    ),
    contentPadding: EdgeInsets.only(left: 15, top: 5, right: 0, bottom: 5),
    suffixIcon: Icon(
      FontAwesomeIcons.mobileAlt,
      color: colorBlueLight[100],
      size: 20,
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: colorBlueLight[200], width: 0.8)),
    hintText: '   متن عددی پیامک دریافت شده را وارد کنید',
    hintStyle: textStyleRegular(color: colorBlueLight[100], size: 14),
    errorText: errorText,
    errorStyle: textStyleRegular(color: colorBlueLight[100], size: 11),
  );
}

InputDecoration captchaDecoration({String errorText = ''}) {
  return InputDecoration(
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
        width: 0,
        style: BorderStyle.solid,
      ),

      //gapPadding: ThemeColor.getPercentageDisplayWidth(5)
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0,
          style: BorderStyle.solid,
        )),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0,
          style: BorderStyle.solid,
        )),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0,
          style: BorderStyle.solid,
        )),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0,
          style: BorderStyle.solid,
        )),
    contentPadding: EdgeInsets.only(left: 15, top: 5, right: 0, bottom: 5),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.transparent, width: 0.8)),
    hintText: '   کد روبرو',
    hintStyle: textStyleRegular(color: colorBlueLight[100], size: 14),
  );
}

SnackBar getSnackBar(String s) {
  return SnackBar(
    content: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          s,
          style: textStyleBold(size: 14, color: colorFFFFFF),
        )),
    backgroundColor: colorFFFFFF,
    duration: Duration(seconds: 1),
  );
}
