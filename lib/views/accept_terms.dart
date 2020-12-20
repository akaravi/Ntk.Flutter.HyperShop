import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/database_local.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/widgets/circular_checkbox.dart';
import 'package:url_launcher/url_launcher.dart';

import 'user_register.dart';

class AcceptTerms extends StatelessWidget {
  AcceptTerms({Key key, this.bloc}) : super(key: key);
  final MainUserBloc bloc;

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    ScreenConfig().init(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: ScreenConfig.hBlocks * 100,
        height: ScreenConfig.vBlocks * 100,
        color: color000F25,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                logoImage(context),
                termCondition(context),
                enterButton(context)
              ]),
        ),
      ),
    ));
  }

  Widget logoImage(BuildContext context) {
    return Container(
        width: ScreenConfig.hBlocks * 100,
        height: ScreenConfig.vBlocks * 50,
        margin: EdgeInsets.only(
            top: topBasePaddingValue, bottom: topBasePaddingValue),
        child: Stack(children: <Widget>[
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  acceptTermDescription,
                  style: textStyleMedium(color: colorBABABA, size: 12),
                  softWrap: true,
                ),
              )),
          Image.asset(
            'assets/images/splash_image.png',
            fit: BoxFit.cover,
          ),
        ]));
  }

  Widget termCondition(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          rowWithFree(
              centerSize: 6,
              center: Row(
                children: <Widget>[
                  termConditionStream(context),
                  GestureDetector(
                    onTap: () {
                      bloc.acceptTermAndCondition
                          .changeValue(!bloc.acceptTermAndCondition.lastValue);
                    },
                    child: Text('کلیه قوانین و مقررات را خوانده و می پذیرم ',
                        style: textStyleRegular(color: colorFFFFFF, size: 13)),
                  ),
                  readtermConditionButton(context)
                ],
              )),
        ],
      ),
    );
  }

  Widget readtermConditionButton(BuildContext context) {
    return GestureDetector(
        onTap: () {
          //Navigator.push(context,
          //  MaterialPageRoute(builder: (context) => UserPrivacyTerm(),settings: RouteSettings(name: 'Privacy Term')));
          if (Platform.isIOS) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Educational()),
            // );
          } else {
            launch(privacyTermUrl);
          }
        },
        child: Container(
          height: 30,
          margin: EdgeInsets.only(right: 5),
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              color: color000000,
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: color333333, width: 1)),
          child: Center(
            child: Text(
              'مطالعه',
              style: textStyleBold(color: colorFFFFFF, size: 12),
            ),
          ),
        ));
  }

  Widget termConditionStream(BuildContext context) {
    return StreamBuilder(
      stream: bloc.acceptTermAndCondition.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueAccent[100],
          ),
          margin: EdgeInsets.all(6),
          //padding: EdgeInsets.all(3),
          child: CircularCheckBox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: snapshot.data != null ? snapshot.data : false,
            inactiveColor: Colors.greenAccent,
            onChanged: (val) {
              bloc.acceptTermAndCondition.changeValue(val);
            },
          ),
        );
      },
    );
  }

  Widget enterButton(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: ScreenConfig.vBlocks * 5),
        child: enterButtonCircular(context));
  }

  Widget enterButtonCircular(BuildContext context) {
    return StreamBuilder(
      stream: bloc.acceptTermAndCondition.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData && snapshot.data) {
          return GestureDetector(
            onTap: () async {
              await LocalDatabase.setBool(
                  LocalDatabase.termAndConditionSettedKey, true);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserRegister(bloc: bloc),
                      settings: RouteSettings(name: 'User Register')));
            },
            child: Center(
              child: Container(
                width: heightPercentage(700),
                height: heightPercentage(350),
                decoration: BoxDecoration(
                    color: color000F25,
                    border: Border.all(color: color808080),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: color257EEA.withOpacity(.25),
                        offset: Offset(0, 0),
                        blurRadius: widthPercentage(100),
                      )
                    ],
                    borderRadius: BorderRadius.circular(heightPercentage(50))),
                child: Center(
                  child: enterTextWithLoading(),
                ),
              ),
            ),
          );
        }
        return Center(
          child: Container(
            width: heightPercentage(700),
            height: heightPercentage(350),
            decoration: BoxDecoration(
                color: color000F25,
                border: Border.all(color: color333333),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: color1C1C1C.withOpacity(.45),
                    offset: Offset(0, 0),
                    blurRadius: widthPercentage(100),
                  )
                ],
                borderRadius: BorderRadius.circular(heightPercentage(50))),
            child: Center(
              child: Stack(
                children: [
                  Center(
                    child: Text('ورود',
                        textAlign: TextAlign.center,
                        style: textStyleBold(color: color808080, size: 20)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget enterTextWithLoading() {
    return StreamBuilder(
      stream: bloc.loadingIndicator.stream,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        var data = false;
        if (snapshot.hasData) data = snapshot.data;
        if (data) {
          return Stack(
            children: [
              Center(
                child: Text('ورود',
                    textAlign: TextAlign.center,
                    style: textStyleBold(color: color808080, size: 20)),
              ),
              Center(
                  child: CircularProgressIndicator(
                strokeWidth: 1,
              ))
            ],
          );
        }
        return Stack(
          children: [
            Center(
              child: Text('ورود',
                  textAlign: TextAlign.center,
                  style: textStyleBold(color: colorFFFFFF, size: 20)),
            )
          ],
        );
      },
    );
  }
}
