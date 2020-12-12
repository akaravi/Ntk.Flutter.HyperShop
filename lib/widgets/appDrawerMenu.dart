import 'package:flutter/material.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';

class AppDrawerMenu extends StatefulWidget {
  final MainUserBloc bloc;
  AppDrawerMenu({Key key, this.bloc}) : super(key: key);

  @override
  _AppDrawerMenuState createState() => _AppDrawerMenuState();
}

class _AppDrawerMenuState extends State<AppDrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenConfig.hBlocks * 85,
        decoration: BoxDecoration(color: colorSplashBackground),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: <Widget>[
                logoImage(),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                'نسخه نرم افزار : 1.0.0',
                style: textStyleRegular(size: 10, color: colorBlueLight),
              ),
            )
          ],
        ));
  }

  Widget logoImage() {
    return Container(
      width: ScreenConfig.hBlocks * 100,
      height: ScreenConfig.vBlocks * 25,
      child: Image.asset(
        'assets/images/login_image.png',
        fit: BoxFit.cover,
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
