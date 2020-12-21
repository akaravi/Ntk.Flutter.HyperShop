import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/widgets/appDrawerMenu.dart';
import 'package:hypertools/widgets/topAppBar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  final MainUserBloc bloc;
  HomePage({Key key, this.bloc}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  PersistentTabController navbarTabController;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  StreamSubscription<int> tabViewIndexListener;
  StreamSubscription<bool> openAppDrawerListener;
  int currentTabIndex = 0;

  @override
  void initState() {
    navbarTabController = PersistentTabController(initialIndex: 0);
    openAppDrawerListener = widget.bloc.openAppDrawer.stream.listen((data) {
      if (data != null && data == true) {
        scaffoldKey.currentState.openDrawer();
      }
    });

    tabViewIndexListener = widget.bloc.mainTabIndex.stream.listen((value) {
      // setState(() {
      currentTabIndex = value;
      navbarTabController.index = value;
      // });
    });
    super.initState();
  }

  @override
  void dispose() {
    if (tabViewIndexListener != null) tabViewIndexListener.cancel();
    if (openAppDrawerListener != null) openAppDrawerListener.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (Scaffold.hasDrawer(context)) Navigator.of(context).pop();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: color000F25,
      drawer: AppDrawerMenu(
        bloc: widget.bloc,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopAppBar(bloc: widget.bloc),
          Expanded(
            child: tabView(context),
          )
        ],
      ),
    );
  }

  Widget tabView(BuildContext context) {
    return PersistentTabView(context,
        controller: navbarTabController,
        screens: [
          getScreen(context, Container()),
          getScreen(context, Container()),
          getScreen(context, Container()),
          getScreen(context, Container()),
        ],
        items: _navBarsItems(),
        decoration: NavBarDecoration(
          colorBehindNavBar: Colors.transparent,
        ),
        confineInSafeArea: true,
        backgroundColor: color1C1C1C,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true, onItemSelected: (index) {
      widget.bloc.mainTabIndex.changeValue(index);
    },
        margin: EdgeInsets.all(0),
        popActionScreens: PopActionScreensType.once,
        bottomScreenMargin: 0.0,
        onWillPop: _requestPop,
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3);
  }

  Widget getScreen(BuildContext ctx, Widget child) {
    return Container(
      color: color000F25,
      child: Stack(children: [logoImage(), child]),
    );
  }

  Widget logoImage() {
    return Container(
      width: ScreenConfig.width,
      height: ScreenConfig.width,
      child: Image.asset(
        'assets/images/splash_imageBack.png',
        fit: BoxFit.cover,
        alignment: Alignment.bottomCenter,
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: getIcon(FontAwesomeIcons.home, false),
        title: "خانه",
        activeColor: colorF29421,
        inactiveColor: colorBABABA,
        activeColorAlternate: colorFFFFFF,
      ),
      PersistentBottomNavBarItem(
        icon: basketIcon(),
        title: 'سبد خرید',
        activeColor: colorF29421,
        inactiveColor: colorBABABA,
        // textStyle: textStyleBold(size: 13, color: colorBABABA),
        activeColorAlternate: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: getIcon(FontAwesomeIcons.search, false),
        title: 'جستجو',
        activeColor: colorFF0000,
        inactiveColor: colorBABABA,
        // textStyle: textStyleBold(size: 13, color: colorBABABA),
        activeColorAlternate: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: getIcon(FontAwesomeIcons.userCog, false),
        title: 'تنظیمات',
        activeColor: colorF29421,
        inactiveColor: colorBABABA,
        // textStyle: textStyleBold(size: 13, color: colorBABABA),
        activeColorAlternate: Colors.white,
      ),
    ];
  }

  Widget basketIcon() {
    return StreamBuilder(
      stream: widget.bloc.orderBloc.hasOrder.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var data = false;
        if (snapshot.hasData) data = snapshot.data;
        if (data)
          return Stack(
            overflow: Overflow.visible,
            fit: StackFit.loose,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: getIcon(FontAwesomeIcons.shoppingBasket, false),
                  )),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 14, top: 3),
                      child: getIcon(FontAwesomeIcons.solidCircle, false,
                          color: colorFF0000, size: 14)))
            ],
          );
        return getIcon(FontAwesomeIcons.shoppingBasket, false);
      },
    );
  }

  Icon getIcon(IconData icon, bool isActive, {double size, Color color}) {
    if (size == null) size = 16;
    if (color == null) color = color808080;
    if (!isActive)
      return Icon(
        icon,
        size: size,
        color: color,
      );

    return Icon(
      icon,
      size: 14,
      color: colorFFFFFF,
    );
  }

  bool tab2Exit = false;
  Future<bool> _requestPop() {
    if (widget.bloc.openAppDrawer.lastValue != null &&
        widget.bloc.openAppDrawer.lastValue) {
      widget.bloc.openAppDrawer.changeValue(false);
      Navigator.of(context).pop();
      return new Future.value(false);
    }
    if (currentTabIndex != 0) {
      widget.bloc.mainTabIndex.changeValue(0);
      return new Future.value(false);
    }
    if (tab2Exit) return new Future.value(true);
    tab2Exit = true;
    Timer(Duration(seconds: 3), () {
      tab2Exit = false;
    });
    scaffoldKey.currentState
        .showSnackBar(getSnackBar('برای خروج دوباره کلید بازگشت را فشار دهید'));
    return new Future.value(false);
  }
}
