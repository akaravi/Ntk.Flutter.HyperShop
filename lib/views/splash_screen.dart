import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/ErrorExceptionResultBase.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/views/accept_terms.dart';
import 'package:hypertools/views/update_program.dart';
import 'package:hypertools/widgets/qButton.dart';
import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key key, this.bloc}) : super(key: key);
  final MainUserBloc bloc;

  void checkData(BuildContext context, bool showAcceptTermsForm,
      ErrorExceptionResultBase result) {
    if (result.uiResultType == ErrorExceptionResultType.hasUpdateForce) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => UpdateProgram(
                  bloc: bloc,
                  hasForceUpdate: true,
                  showAcceptTermsForm: showAcceptTermsForm),
              settings: RouteSettings(name: 'Update Program')));
      return;
    } else if (result.uiResultType == ErrorExceptionResultType.hasUpdate) {
      if (bloc.updateAppBloc.showPopupUpdate) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => UpdateProgram(
                    bloc: bloc,
                    hasForceUpdate: false,
                    showAcceptTermsForm: showAcceptTermsForm),
                settings: RouteSettings(name: 'Update Program')));
        return;
      }
    }
    if (showAcceptTermsForm) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => AcceptTerms(
                    bloc: bloc,
                  ),
              settings: RouteSettings(name: 'Accept Terms')));
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => HomePage(
                    bloc: bloc,
                  ),
              settings: RouteSettings(name: 'Home Page')));
    }
  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    ScreenConfig().init(context);
    bloc.initializeData().then((value) => {
          if (value != null)
            checkData(context, bloc.innerShowAcceptTermPage, value)
        });
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: color1C1C1C,
      body: StreamBuilder(
        stream: bloc.notConnectedToInternet.stream,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData && snapshot.data.isNotEmpty) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: ScreenConfig.hBlocks * 15,
                          height: ScreenConfig.hBlocks * 15,
                          child: Image.asset('assets/images/alert.png',
                              fit: BoxFit.fill),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'خطایی اتفاق افتاد !',
                          style: textStyleBold(size: 14, color: colorFFFFFF),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          (snapshot.data != null ? snapshot.data : ''),
                          style: textStyleRegular(size: 11, color: colorBABABA),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Center(
                            child: rowWithFree(
                                centerSize: 3,
                                center: QButton(
                                  onClick: () {
                                    bloc.initializeData();
                                  },
                                  color: colorCF5A00,
                                  child: Text(
                                    'تلاش مجدد',
                                    style: textStyleBold(
                                        color: colorFFFFFF, size: 13),
                                  ),
                                )))
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
            );
          }
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      SpinKitFadingGrid(
                        color: colorCF5A00,
                        size: 24,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'لطفاَ کمی صبر کنید',
                        style: textStyleBold(size: 14, color: colorFFFFFF),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'در حال چک کردن اطلاعات ضروری',
                        style: textStyleRegular(size: 12, color: colorBABABA),
                      ),
                    ],
                  ),
                ),
                LinearProgressIndicator(
                  backgroundColor: color1C1C1C,
                  valueColor: AlwaysStoppedAnimation<Color>(colorCF5A00),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
