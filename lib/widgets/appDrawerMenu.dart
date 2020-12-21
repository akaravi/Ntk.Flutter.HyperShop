import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/views/update_program.dart';
import 'package:hypertools/views/user_register.dart';

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
        width: ScreenConfig.hBlocks * 75,
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
            getDescriptionTitle(widget.bloc.updateAppBloc.model.title,
                FontAwesomeIcons.shoppingBasket,
                titleColor: blue[50], titleFontSize: 16, iconSize: 20),
            getFullDescription('تلفن', FontAwesomeIcons.phone,
                widget.bloc.updateAppBloc.model.aboutUsTel,
                description2: widget.bloc.updateAppBloc.model.aboutUsFax),
            getFullDescription('آدرس ایمیل', FontAwesomeIcons.solidEnvelope,
                widget.bloc.updateAppBloc.model.aboutUsEmail),
            getFullDescription('آدرس', FontAwesomeIcons.mapMarkerAlt,
                widget.bloc.updateAppBloc.model.aboutUsAddress),
            getFullDescription('درباره ما', FontAwesomeIcons.addressCard,
                widget.bloc.updateAppBloc.model.aboutUsDescription,
                maxLines: 3),
            if (widget.bloc.userHasLogined == false) loginUser(context),
            if (widget.bloc.userHasLogined) loggOut(context),
            contactUs(context),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'نسخه : ' + widget.bloc.updateAppBloc.appVersion.toString(),
                    style: textStyleRegular(size: 10, color: colorBlueLight),
                  ),
                ),
                if (widget.bloc.updateAppBloc.updateAvailable)
                  updateApp(context),
                if (widget.bloc.updateAppBloc.updateAvailable == false)
                  Container(),
              ],
            ),
            Container(),
            Container()
          ],
        ));
  }

  Widget contactUs(BuildContext ctx) {
    return getbutton('تماس با ما', () async {},
        icon: FontAwesomeIcons.commentDots);
  }

  Widget loggOut(BuildContext ctx) {
    return getbutton('خروج کاربر', () async {},
        icon: FontAwesomeIcons.solidUser);
  }

  Widget loginUser(BuildContext ctx) {
    return getbutton('ورود کاربر', () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => UserRegister(
                    bloc: widget.bloc,
                    openFromDrawer: true,
                  ),
              settings: RouteSettings(name: 'user register')));
    }, icon: FontAwesomeIcons.solidUser, borderColor: colorCF5A00);
  }

  Widget updateApp(BuildContext ctx) {
    return getbutton('بروز رسانی ', () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => UpdateProgram(
                    bloc: widget.bloc,
                    openFromDrawer: true,
                  ),
              settings: RouteSettings(name: 'user register')));
    }, icon: FontAwesomeIcons.download);
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

  Widget getFullDescription(String title, IconData icon, String description,
      {double titleFontSize = 14,
      Color titleColor,
      String description2,
      int maxLines = 2}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getDescriptionTitle(title, icon,
            titleFontSize: titleFontSize,
            titleColor: titleColor,
            paddingBottom: 0),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 55, bottom: 10),
          child: Text(
            (description == null ? 'ثبت نشده' : description),
            softWrap: true,
            maxLines: maxLines,
            style: textStyleBold(color: colorBABABA, size: 12),
          ),
        ),
        if (description2 != null && description2.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(left: 20, right: 55, bottom: 10),
            child: Text(
              description2,
              softWrap: true,
              maxLines: maxLines,
              style: textStyleBold(color: colorBABABA, size: 12),
            ),
          )
      ],
    );
  }

  Widget getDescriptionTitle(String title, IconData icon,
      {double titleFontSize = 13,
      Color titleColor,
      double iconSize = 15,
      double paddingBottom = 10}) {
    if (titleColor == null) titleColor = blue[50];
    return Padding(
        padding: EdgeInsets.only(
            left: 20, right: 20, top: paddingBottom, bottom: paddingBottom),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 30,
                height: 30,
                child: Center(
                    child: Icon(
                  icon,
                  size: iconSize,
                  color: blue[50],
                ))),
            Padding(
              padding: EdgeInsets.only(left: 5),
            ),
            Text(
              title,
              style: textStyleBold(color: titleColor, size: titleFontSize),
            )
          ],
        ));
  }

  Widget getbutton(String title, Function onTap,
      {IconData icon, Color borderColor}) {
    if (borderColor == null) borderColor = blue[50];
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: GestureDetector(
                  onTap: () {
                    if (Scaffold.hasDrawer(context))
                      Navigator.of(context).pop();
                    if (onTap != null) onTap();
                  },
                  child: Container(
                    width: ScreenConfig.vBlocks * 19,
                    padding:
                        EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                    decoration: BoxDecoration(
                        border: Border.all(color: borderColor, width: 0.8),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (icon != null)
                            Icon(icon, color: borderColor, size: 15),
                          if (icon != null)
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                            ),
                          Text(
                            title,
                            textAlign: TextAlign.center,
                            style: textStyleBold(size: 12, color: borderColor),
                          )
                        ],
                      ),
                    ),
                  )))
        ]);
  }
}
