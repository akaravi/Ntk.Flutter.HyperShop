import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/bloc/captcha_viewer_bloc.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/widgets/button_with_loading.dart';

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
                      builder: (BuildContext context,
                          AsyncSnapshot<String> snapshot) {
                        return GestureDetector(
                            onTap: () {
                              if (focusNode != null)
                                FocusScope.of(context).requestFocus(focusNode);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 3, right: 3, bottom: 3, top: 7),
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
                    right: ButtonWithLoading(
                      loadingStream: bloc.loadingIndicator.stream,
                      normalOpacity: 1,
                      progressOpacity: 0.5,
                      onTap: () async {
                        await bloc.refreshCaptcha();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Container(
                              decoration: buttonBoxDecoration,
                              child: Icon(FontAwesomeIcons.sync,
                                  size: 18, color: colorBABABA),
                            )),
                      ),
                      progrss: Padding(
                          padding: EdgeInsets.all(4),
                          child: Center(
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ))),
                          )),
                    ))),
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
