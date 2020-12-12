import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/views/home_page.dart';
import 'package:hypertools/widgets/awesome_dialog/awesome_dialog.dart';
import 'package:hypertools/widgets/button_with_loading.dart';
import 'package:hypertools/widgets/captcha_viewer.dart';

class UserRegister extends StatefulWidget {
  final MainUserBloc bloc;
  UserRegister({Key key, this.bloc}) : super(key: key);

  @override
  _UserRegisterState createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister>
    with TickerProviderStateMixin {
  final FocusNode _mobileFocusNode = FocusNode();
  final FocusNode _captchaFocudNode = FocusNode();
  TextEditingController usernameController;

  int currentTabIndex = 0;
  TabController tabController;
  StreamSubscription<int> tabViewIndexListener;

  @override
  void initState() {
    usernameController = TextEditingController();
    tabController = TabController(length: 2, vsync: this);
    tabViewIndexListener =
        widget.bloc.userRegisterTabIndex.stream.listen((data) {
      setState(() {
        currentTabIndex = data;
        tabController.index = data;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    tabViewIndexListener?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.bloc.captchaBloc.model == null)
      widget.bloc.captchaBloc.refreshCaptcha();
    return Scaffold(
        backgroundColor: color000F25,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: ScreenConfig.width,
              height: ScreenConfig.height,
              padding: topBasePaddingEdge(),
              color: color000F25,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    logoImage(context),
                    formTitle(context),
                    Expanded(
                        flex: 5,
                        child: TabBarView(
                          physics: NeverScrollableScrollPhysics(),
                          controller: tabController,
                          children: [
                            enterForm(context),
                            getSmsForm(context),
                          ],
                        )),
                    skipUser(context)
                  ],
                ),
              ),
            )));
  }

  Widget logoImage(BuildContext ctx) {
    return Container(
      child: Image.asset(
        'assets/images/login_image.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget formTitle(BuildContext ctx) {
    return (Container(
      width: ScreenConfig.hBlocks * 100,
      padding: EdgeInsets.only(right: ScreenConfig.hBlocks * 17),
      margin: EdgeInsets.only(bottom: 25),
      child: Text(
        'ورود کاربر',
        style: textStyleRegular(color: colorFFFFFF, size: 18),
      ),
    ));
  }

  Widget getSmsForm(BuildContext ctx) {
    return Column(
      children: <Widget>[
        smsDataStream(),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        enterUserButton(context),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        reSendSmsButton(context),
      ],
    );
  }

  Widget enterForm(BuildContext ctx) {
    return Column(
      children: <Widget>[
        usernameStream(),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        captchaStream(context),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        sendSmsButton(context),
      ],
    );
  }

  Widget smsDataStream() {
    return StreamBuilder(
      stream: widget.bloc.username.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return rowWithFree(
            centerSize: 4,
            center: TextField(
              textDirection: TextDirection.ltr,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              keyboardType: TextInputType.phone,
              style: textStyleNumberBold(color: white[50], size: 14),
              decoration: smsDataDecoration(
                  errorText: (snapshot.hasError ? snapshot.error : null)),
              onChanged: (value) {
                widget.bloc.userSmsEntered.changeValue(value);
              },
              onEditingComplete: () {
                if (snapshot.hasData && !snapshot.hasError)
                  FocusScope.of(context).requestFocus(_captchaFocudNode);
              },
            ));
      },
    );
  }

  Widget usernameStream() {
    return StreamBuilder(
      stream: widget.bloc.username.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) usernameController.text = snapshot.data;
        return rowWithFree(
            centerSize: 4,
            center: TextField(
              textDirection: TextDirection.ltr,
              focusNode: _mobileFocusNode,
              textInputAction: TextInputAction.next,
              controller: usernameController,
              autocorrect: false,
              keyboardType: TextInputType.phone,
              style: textStyleNumberBold(color: white[50], size: 14),
              decoration: usernameDecoration(
                  errorText: (snapshot.hasError ? snapshot.error : null)),
              onChanged: (value) {
                widget.bloc.username.changeValue(value);
              },
              onEditingComplete: () {
                if (snapshot.hasData && !snapshot.hasError)
                  FocusScope.of(context).requestFocus(_captchaFocudNode);
              },
            ));
      },
    );
  }

  Widget sendSmsButton(BuildContext context) {
    return Column(children: <Widget>[
      rowWithFree(
          centerSize: 4,
          center: ButtonWithLoading(
              loadingStream: widget.bloc.loadingIndicator.stream,
              isEnabledStream: widget.bloc.loginButtonIsEnabled.stream,
              onTap: () async {
                FocusScope.of(context).unfocus();
                await widget.bloc.createMember();
              },
              progrss: CircularProgressIndicator(),
              normalOpacity: 1,
              progressOpacity: 0.5,
              child: Row(children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorBlueMiddle,
                      ),
                      padding: EdgeInsets.all(15),
                      child: Center(
                          child: StreamBuilder(
                        stream: widget.bloc.loginButtonIsEnabled.stream,
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          Color textColor = gray[50];
                          if (snapshot.hasData) textColor = white[50];
                          return Text('ارسال پیامک صحت سنجی',
                              style: textStyleBold(color: textColor, size: 15));
                        },
                      ))),
                )
              ]))),
      Padding(
        padding: EdgeInsets.only(top: 5),
      ),
    ]);
  }

  Widget enterUserButton(BuildContext context) {
    return Column(children: <Widget>[
      rowWithFree(
          centerSize: 4,
          center: ButtonWithLoading(
              loadingStream: widget.bloc.loadingIndicator.stream,
              isEnabledStream: widget.bloc.userSmsEntered.hasValueStream,
              onTap: () async {
                enterUser(context);
              },
              progrss: CircularProgressIndicator(),
              normalOpacity: 1,
              progressOpacity: 0.5,
              child: Row(children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorBlueMiddle,
                      ),
                      padding: EdgeInsets.all(15),
                      child: Center(
                          child: StreamBuilder(
                        stream: widget.bloc.userSmsEntered.hasValueStream,
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          Color textColor = gray[50];
                          if (snapshot.hasData) textColor = white[50];
                          return Text('ورود به برنامه',
                              style: textStyleBold(color: textColor, size: 15));
                        },
                      ))),
                )
              ]))),
      Padding(
        padding: EdgeInsets.only(top: 5),
      ),
    ]);
  }

  Widget captchaStream(BuildContext ctx) {
    return rowWithFree(
        centerSize: 4,
        center: CaptchaViewer(
          boxDecoration: BoxDecoration(
            border: Border.all(
              color: colorBlueLight[100],
              width: 0.8,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          buttonBoxDecoration: BoxDecoration(
            border: Border.all(
              color: colorBlueLight[100],
              width: 0.3,
            ),
            color: colorBlueMiddle.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          textStyle: textStyleNumberBold(color: white[50], size: 14),
          errorTextStyle:
              textStyleRegular(color: colorBlueLight[100], size: 11),
          bloc: widget.bloc.captchaBloc,
          focusNode: _captchaFocudNode,
          onEditingComplete: () {
            FocusScope.of(ctx).unfocus();
          },
        ));
  }

  Widget reSendSmsButton(BuildContext ctx) {
    return Column(
      children: <Widget>[
        Text('پیامک دریافت نشد ؟',
            style: textStyleMedium(color: blue[100], size: 12)),
        Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        StreamBuilder(
            stream: widget.bloc.resendSmsButtonIsEnabled.stream,
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              bool hasData = false;
              if (snapshot.hasData) hasData = snapshot.data;
              if (hasData) {
                return GestureDetector(
                  onTap: () {
                    widget.bloc.captchaBloc.refreshCaptcha();
                    widget.bloc.userRegisterTabIndex.changeValue(0);
                  },
                  child: Center(
                    child: Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: blue[50], width: 0.6),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          'ثبت مجدد شماره موبایل',
                          textAlign: TextAlign.center,
                          style: textStyleBold(size: 12, color: white),
                        )),
                  ),
                );
              } else
                return countDownText();
            }),
      ],
    );
  }

  Widget countDownText() {
    return StreamBuilder(
        stream: widget.bloc.createMemberCountDown.stream,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          var data = 120;
          if (snapshot.hasData) data = snapshot.data;
          return Center(
            child: Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: blue[50].withOpacity(0.5), width: 0.6),
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  'ثبت مجدد شماره موبایل تا ' + data.toString() + " ثانیه دیگر",
                  textAlign: TextAlign.center,
                  style: textStyleNumberBold(size: 12, color: gray[50]),
                )),
          );
        });
  }

  Widget skipUser(BuildContext ctx) {
    return Expanded(
      flex: 2,
      child: Column(
        children: <Widget>[
          Center(
              child: Text('می خواهید وارد برنامه شوید؟',
                  style: textStyleMedium(color: blue[100], size: 12))),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  ctx,
                  MaterialPageRoute(
                      builder: (context) => HomePage(bloc: widget.bloc),
                      settings: RouteSettings(name: 'Home Page')));
            },
            child: Center(
              child: Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: blue[50], width: 0.6),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    'صرف نظر از وارد کردن شماره موبایل',
                    textAlign: TextAlign.center,
                    style: textStyleBold(size: 14, color: white),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Future<void> enterUser(BuildContext ctx) async {
    await AwesomeDialog(
      context: context,
      dialogType: DialogType.ERROR,
      animType: AnimType.BOTTOMSLIDE,
      tittle: 'خطا',
      desc: 'ارسال اطلاعات موفق نبود',
      btnOkColor: Colors.blueAccent,
      btnOkText: ('تلاش مجدد'),
      btnOkOnPress: () async {
        enterUser(ctx);
      },
      btnCancelText: 'انصراف',
      btnCancelOnPress: () {},
    ).show();
  }
}
