import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/bloc/captcha_viewer_bloc.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/widgets/button_with_loading.dart';
import 'customLoading.dart';
import 'qButton.dart';

class CaptchaViewer extends StatelessWidget {
  final TextStyle textStyle;
  final BoxDecoration boxDecoration;
  final BoxDecoration buttonBoxDecoration;
  final TextStyle errorTextStyle;
  final BoxDecoration errorBoxDecoration;
  final CaptchaViewerBloc bloc;
  final FocusNode focusNode;
  final double height;
  final double width;
  final void Function() onEditingComplete;
  CaptchaViewer(
      {Key key,
      this.textStyle,
      this.boxDecoration,
      this.bloc,
      this.height,
      this.width,
      this.focusNode,
      this.errorTextStyle,
      this.errorBoxDecoration,
      this.onEditingComplete,
      this.buttonBoxDecoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.captchaUserValue.stream,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        var bx = boxDecoration;
        bool hasError = false;
        String err = 'خطا در کد امنیتی';
        if (snapshot.hasError &&
            snapshot.error != null &&
            snapshot.error.toString() != '') {
          if (errorBoxDecoration != null) bx = errorBoxDecoration;
          hasError = true;
          err = snapshot.error.toString();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: width,
              height: height,
              decoration: bx,
              child: rowWithFree(
                leftSize: 5,
                centerSize: 4,
                rightSize: 2,
                left: TextField(
                  textDirection: TextDirection.ltr,
                  focusNode: focusNode,
                  textInputAction: TextInputAction.next,
                  autocorrect: false,
                  keyboardType: TextInputType.phone,
                  style: textStyle,
                  decoration: captchaDecoration(),
                  onChanged: (value) {
                    bloc.captchaUserValue.changeValue(value);
                  },
                  onEditingComplete: () {
                    if (onEditingComplete != null) onEditingComplete();
                  },
                ),
                center: StreamBuilder(
                  stream: bloc.captchaImageUrl.stream,
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    return GestureDetector(
                        onTap: () {
                          if (focusNode != null)
                            FocusScope.of(context).requestFocus(focusNode);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 3, right: 3, bottom: 3, top: 3),
                            child: ((snapshot.hasData &&
                                    snapshot.data != null &&
                                    snapshot.data.isNotEmpty)
                                ? Center(
                                    child: Image.network(
                                    snapshot.data,
                                    fit: BoxFit.cover,
                                  ))
                                : Text(''))));
                  },
                ),
                right: Padding(
                    padding: EdgeInsets.all(3),
                    child: StreamBuilder(
                        stream: bloc.loadingIndicator.stream,
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.hasData && snapshot.data)
                            return Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: colorCF5A00, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: CustomLoading(colorCF5A00),
                            );
                          return Container(
                              width: 36,
                              height: 36,
                              child: QButton(
                                  onClick: () {
                                    bloc.refreshCaptcha();
                                  },
                                  padding: EdgeInsets.only(left: 10),
                                  color: colorCF5A00,
                                  allowLoading: false,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: colorCF5A00,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Icon(FontAwesomeIcons.sync,
                                        size: 16, color: colorFFFFFF),
                                  )));
                        })),
              ),
            ),
            Visibility(
              child: Text(
                " " + err,
                style: (errorTextStyle != null ? errorTextStyle : textStyle),
              ),
              visible: hasError,
            )
          ],
        );
      },
    );
  }
}
