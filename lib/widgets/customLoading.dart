import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoading extends StatelessWidget {
  bool Circle;
  String title;
  Color color;

  CustomLoading(this.color, {this.title}) {
    this.Circle = false;
    if (title == null) title = '';
  }

  CustomLoading.circle() {
    this.Circle = true;
  }

  @override
  Widget build(BuildContext context) {
    if (!Circle)
//      return Loading(indicator: BallSpinFadeLoaderIndicator(), size: 40.0);
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              overflow: TextOverflow.fade,
              style: TextStyle(fontSize: 12, color: color),
            ),
            SpinKitRipple(
              color: color,
              size: 28.0,
            ),
          ],
        ),
      );
    else
      return null;
  }
}

class SpinLoading extends StatelessWidget {
  Color color;

  SpinLoading(this.color);

  @override
  Widget build(BuildContext context) {
    return SpinKitRipple(
      color: color,
      size: 64.0,
    );
  }
}
