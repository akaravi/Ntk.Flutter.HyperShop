import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';

class TopAppBar extends StatelessWidget {
  final MainUserBloc bloc;
  TopAppBar({Key key, this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Container(
      height: 80,
      padding: EdgeInsets.only(top: 30, bottom: 10, right: 20, left: 20),
      decoration: BoxDecoration(color: color1C1C1C, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(.15),
          blurRadius: 7,
          offset: Offset(0, 0),
        )
      ]),
      child: Row(
        children: [
          drawerMenu(context),
          SizedBox(
            width: 10,
          ),
          showChild(context, ScreenConfig.hBlocks),
          // customWidgets.freeSpaceMaker(1),
          showBack(context)
        ],
      ),
    );
  }

  Widget showBack(context) {
    return StreamBuilder(
      stream: bloc.mainTabIndex.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        int data = 0;
        if (snapshot.hasData) data = snapshot.data;
        if (data == 0) return Container();
        return Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              bloc.mainTabIndex.changeValue(0);
            },
            splashColor: Colors.grey.withOpacity(.1),
            highlightColor: Colors.grey.withOpacity(.1),
            child: Container(
              padding: EdgeInsets.all(8),
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: .5),
              ),
              child: Icon(
                FontAwesomeIcons.backward,
                size: 18,
                color: colorBABABA.withOpacity(0.8),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget drawerMenu(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: color000000,
      child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            bloc.openAppDrawer.changeValue(true);
          },
          splashColor: color000000.withOpacity(.2),
          highlightColor: color000000.withOpacity(.2),
          child: Container(
            width: 38,
            height: 38,
            child: Icon(
              Icons.home,
              color: color808080,
              size: 24,
            ),
          )),
    );
  }

  Widget showChild(BuildContext context, double block) {
    return StreamBuilder(
      stream: bloc.mainTabIndex.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var rightLogoPadding = block * 100;
        rightLogoPadding > 500
            ? rightLogoPadding = block * 70
            : rightLogoPadding = block * 40;
        int data = 0;
        Widget child;
        if (snapshot.hasData) data = snapshot.data;
        if (data == 0)
          child = Image.asset(
            'assets/images/logo2.png',
            fit: BoxFit.fill,
          );
        else {
          child = getText(data);
          rightLogoPadding = 5;
        }
        return Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              bloc.openAppDrawer.changeValue(true);
            },
            child: Container(
              //height: 20,
              //width: 50,
              /////////////////// TOP BAR LOGO
              padding:
                  EdgeInsets.only(top: 4, bottom: 0, left: rightLogoPadding),

              child: child,
            ),
          ),
        );
      },
    );
  }

  Widget getText(int data) {
    String txt = 'خانه';
    if (data == 1) txt = 'سبد خرید';
    if (data == 2) txt = 'جستجو';
    if (data == 3) txt = 'تنظیمات';
    return Text(
      txt,
      style: textStyleBold(size: 16, color: colorFFFFFF),
    );
  }
}
