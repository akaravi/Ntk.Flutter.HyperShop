import 'package:flutter/material.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:ota_update/ota_update.dart';

import 'accept_terms.dart';
import 'home_page.dart';

class UpdateProgram extends StatefulWidget {
  final MainUserBloc bloc;
  final bool hasForceUpdate;
  final bool showAcceptTermsForm;
  final bool openFromDrawer;
  UpdateProgram(
      {Key key,
      this.bloc,
      this.hasForceUpdate,
      this.showAcceptTermsForm,
      this.openFromDrawer = false})
      : super(key: key);
  @override
  _UpdateProgramState createState() => _UpdateProgramState();
}

class _UpdateProgramState extends State<UpdateProgram> {
  OtaEvent currentEvent;
  bool updateAppIsStarted = false;
  bool updateAppHasError = false;
  String eventStatus = '';
  Future<void> tryOtaUpdate() async {
    try {
      setState(() {
        updateAppIsStarted = true;
        updateAppHasError = false;
        eventStatus = 'شروع فرآیند دریافت نسخه جدید';
      });
      //LINK CONTAINS APK OF FLUTTER HELLO WORLD FROM FLUTTER SDK EXAMPLES
      OtaUpdate()
          .execute(
        widget.bloc.updateAppBloc.model.downloadLinkUpdateSrcByDomain,
        destinationFilename: widget.bloc.updateAppBloc.apkFileName,

        //FOR NOW ANDROID ONLY - ABILITY TO VALIDATE CHECKSUM OF FILE:
        // sha256checksum:
        //     "d6da28451a1e15cf7a75f2c3f151befad3b80ad0bb232ab15c20897e54f21478",
      )
          .listen(
        (OtaEvent event) {
          if (event != null && event.status != null) {
            switch (event.status) {
              case OtaStatus.DOWNLOADING:
                eventStatus = 'در حال دریافت نسخه جدید';
                break;
              case OtaStatus.INSTALLING:
                eventStatus = 'در حال نصب';
                break;
              case OtaStatus.ALREADY_RUNNING_ERROR:
                eventStatus = 'در حال دریافت نسخه جدید';
                break;
              case OtaStatus.PERMISSION_NOT_GRANTED_ERROR:
                eventStatus =
                    'سطح دسترسی برای دریافت و ذخیره فایل در شاخه دانلود یافت نشد';
                updateAppHasError = true;
                updateAppIsStarted = false;
                break;
              case OtaStatus.INTERNAL_ERROR:
                eventStatus = 'نصب خطا داد';
                updateAppHasError = true;
                updateAppIsStarted = false;
                break;
              case OtaStatus.DOWNLOAD_ERROR:
                eventStatus = 'دریافت نسخه جدید کامل نشد';
                updateAppHasError = true;
                updateAppIsStarted = false;
                break;
              case OtaStatus.CHECKSUM_ERROR:
                eventStatus = 'نرم افزار بروزرسانی نشد';
                break;
            }
          }
          setState(() => currentEvent = event);
        },
      );
    } catch (e) {
      setState(() {
        updateAppIsStarted = false;
        updateAppHasError = true;
      });

      print('Failed to make OTA update. Details: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    ScreenConfig().init(context);
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: color000F25,
        body: Center(
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
                    rowWithFree(
                        centerSize: 2,
                        center: Image.asset(
                          'assets/images/logo2.png',
                          fit: BoxFit.fill,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                    ),
                    Text(
                      'نسخه جدید نرم افزار موجود است',
                      style: textStyleBold(size: 14, color: colorFFFFFF),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                    ),
                    if (widget.bloc.updateAppBloc.model.forceUpdate == true)
                      Text(
                        'لطفاَ قبل از استفاده از نرم افزار نسخه جدید را نصب کنید',
                        style: textStyleBold(size: 12, color: colorBABABA),
                      ),
                    if (widget.bloc.updateAppBloc.model.forceUpdate == true)
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('نسخه فعلی  : ',
                            style: textStyleBold(size: 14, color: colorBABABA)),
                        Text(widget.bloc.updateAppBloc.appVersion.toString(),
                            style: textStyleBold(size: 14, color: color257EEA))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('نسخه جدید  : ',
                            style: textStyleBold(size: 14, color: colorBABABA)),
                        Text(
                            widget.bloc.updateAppBloc.model.appVersion
                                .toString(),
                            style: textStyleBold(size: 14, color: color257EEA))
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    // if (updateAppIsStarted == false)
                    rowWithFree(
                      centerSize: 4,
                      center: GestureDetector(
                          onTap: () async {
                            if (updateAppIsStarted == false) tryOtaUpdate();
                          },
                          child: Opacity(
                              opacity: (updateAppIsStarted ? 0.6 : 1),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: color257EEA,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 10),
                                  child: Center(
                                      child: Text(
                                    (updateAppHasError
                                        ? ' تلاش مجدد '
                                        : updateAppIsStarted
                                            ? 'لطفاَ شکیبا باشید'
                                            : 'شروع نصب '),
                                    style: textStyleBold(
                                        color: colorFFFFFF, size: 13),
                                  )),
                                ),
                              ))),
                    ),
                    if (widget.bloc.updateAppBloc.model.forceUpdate == false)
                      Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
                    if (widget.bloc.updateAppBloc.model.forceUpdate == false)
                      rowWithFree(
                        centerSize: 4,
                        center: GestureDetector(
                            onTap: () {
                              if (updateAppIsStarted) return;
                              if (widget.openFromDrawer) {
                                Navigator.of(context).pop();
                                return;
                              }
                              widget.bloc.updateAppBloc.neverShowAgainUpdate();
                              if (widget.showAcceptTermsForm) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            AcceptTerms(
                                              bloc: widget.bloc,
                                            ),
                                        settings: RouteSettings(
                                            name: 'Accept Terms')));
                              } else {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            HomePage(
                                              bloc: widget.bloc,
                                            ),
                                        settings:
                                            RouteSettings(name: 'Home Page')));
                              }
                            },
                            child: Opacity(
                                opacity: (updateAppIsStarted ? 0.6 : 1),
                                child: Container(
                                  decoration: BoxDecoration(
                                      // color: colorCF5A00,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: blue[50])),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 10),
                                    child: Center(
                                        child: Text(
                                      'صرفنظر از نسخه جدید',
                                      style: textStyleBold(
                                          color: colorFFFFFF, size: 13),
                                    )),
                                  ),
                                ))),
                      ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      (currentEvent == null || currentEvent.status == null
                          ? '. '
                          : eventStatus +
                              (currentEvent.value == null
                                  ? ''
                                  : " : " + currentEvent.value)),
                      softWrap: true,
                      style: textStyleBold(size: 13, color: colorCF5A00),
                    ),
                  ],
                ),
              ),
              if (updateAppIsStarted)
                LinearProgressIndicator(
                  backgroundColor: colorBABABA,
                ),
              if (updateAppIsStarted == false)
                Container(
                  height: 4,
                )
            ],
          ),
        ));
  }
}
