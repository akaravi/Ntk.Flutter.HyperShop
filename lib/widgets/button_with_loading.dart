import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';

class ButtonWithLoading extends StatefulWidget {
  final Stream<bool> loadingStream;
  final Stream<bool> isEnabledStream;
  final Widget child;
  final Widget progrss;
  final double normalOpacity;
  final double progressOpacity;
  final GestureTapCallback onTap;
  ButtonWithLoading(
      {Key key,
      this.loadingStream,
      this.child,
      this.progrss,
      this.normalOpacity = 1.0,
      this.progressOpacity = 1.0,
      this.onTap,
      this.isEnabledStream})
      : super(key: key);

  _ButtonWithLoadingState createState() => _ButtonWithLoadingState();
}

class _ButtonWithLoadingState extends State<ButtonWithLoading> {
  bool isLoading = false;
  bool isEnabled = true;
  StreamSubscription<bool> loadingStreamListener;
  StreamSubscription<bool> isEnabledStreamListener;
  @override
  void initState() {
    if (widget.loadingStream != null) {
      loadingStreamListener = widget.loadingStream.listen((value) {
        if (value == isLoading || !mounted) return;
        setState(() {
          isLoading = value;
        });
      });
    }
    if (widget.isEnabledStream != null) {
      isEnabled = false;
      isEnabledStreamListener = widget.isEnabledStream.listen((value) {
        // print('isEnabledStream:'+value.toString());
        //  if (value==isEnabled || ! mounted)
        //     return;
        setState(() {
          isEnabled = value;
        });
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    if (loadingStreamListener != null) loadingStreamListener.cancel();
    if (isEnabledStreamListener != null) isEnabledStreamListener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);

    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            if (isLoading == false && widget.onTap != null && isEnabled == true)
              widget.onTap();
          },
          child: Center(
              child: Opacity(
            opacity: ((isLoading || isEnabled == false)
                ? widget.progressOpacity
                : widget.normalOpacity),
            child: widget.child,
          )),
        ),
        Container(
          child: Center(
            child: (isLoading
                ? widget.progrss
                : Text('',
                    style: textStyleRegular(
                      size: 5,
                    ))),
          ),
        )
      ],
    );
  }
}
