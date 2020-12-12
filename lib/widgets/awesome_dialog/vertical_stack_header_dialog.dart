import 'package:hypertools/theme/theme.dart';

import 'anims/anims.dart';
import 'package:flutter/material.dart';

class VerticalStackDialog extends StatelessWidget {
  final String title;
  final String desc;
  final TextAlign descTextAlign;
  final Widget btnOk;
  final Widget btnCancel;
  final Widget header;
  final Widget body;
  const VerticalStackDialog({
    Key key,
    @required this.title,
    @required this.desc,
    this.btnOk,
    this.descTextAlign,
    this.btnCancel,
    this.body,
    @required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          FadeIn(
            from: SlideFrom.BOTTOM,
            delay: 1,
            child: Container(
              padding: EdgeInsets.only(
                  top: 65.0, left: 40.0, right: 40.0, bottom: 10.0),
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                elevation: 25,
                color: Theme.of(context).cardColor,
                child: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 75.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: body ??
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  title,
                                  textAlign: TextAlign.center,
                                  style: textStyleBold(
                                      size: 16, color: color000000),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    child: Text(
                                      desc,
                                      textAlign: descTextAlign != null
                                          ? descTextAlign
                                          : TextAlign.justify,
                                      // textDirection: TextDirection.ltr,
                                      style: textStyleBold(
                                          size: 14, color: gray[700]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            btnCancel != null
                                ? Expanded(
                                    child: btnCancel ?? Container(),
                                  )
                                : Container(),
                            SizedBox(
                              width: 10,
                            ),
                            btnOk != null
                                ? Expanded(
                                    child: btnOk,
                                  )
                                : Container(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: FadeIn(
                    from: SlideFrom.TOP,
                    delay: 1,
                    child: SizedBox(
                      width: 40,
                      height: 35,
                      child: header,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
