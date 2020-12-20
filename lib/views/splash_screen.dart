import 'package:flutter/material.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/ErrorExceptionResultBase.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/views/accept_terms.dart';

import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key key, this.bloc}) : super(key: key);
  final MainUserBloc bloc;

  void checkData(BuildContext context, bool showAcceptTermsForm,
      ErrorExceptionResultBase result) {
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
      backgroundColor: color000F25,
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
                        Text(
                          'خطایی اتفاق افتاد !',
                          style: textStyleBold(size: 14, color: colorFFFFFF),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          snapshot.data,
                          style: textStyleRegular(size: 11, color: colorBABABA),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Center(
                          child: GestureDetector(
                              onTap: () {
                                bloc.initializeData();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: color257EEA,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 10),
                                  child: Text(
                                    'تلاش مجدد',
                                    style: textStyleBold(
                                        color: colorFFFFFF, size: 13),
                                  ),
                                ),
                              )),
                        )
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
                      Text(
                        'لطفاَ کمی صبر کنید',
                        style: textStyleBold(size: 14, color: colorFFFFFF),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'در حال چک کردن اطلاعات ضروری',
                        style: textStyleRegular(size: 11, color: colorBABABA),
                      ),
                    ],
                  ),
                ),
                LinearProgressIndicator(
                  backgroundColor: Colors.grey[300],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
