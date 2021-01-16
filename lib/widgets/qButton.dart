import 'package:flutter/material.dart';

import '../appDialogs.dart';
import 'customLoading.dart';

class QButton extends StatefulWidget {
  final bool isEnabled;
  final Function onClick;
  final Color color;
  final Widget child;
  final bool allowLoading;
  final EdgeInsetsGeometry padding;
  final String disabledTextToast;
  QButton(
      {Key key,
      this.isEnabled = true,
      this.onClick,
      this.child,
      this.color,
      this.allowLoading = true,
      this.disabledTextToast,
      this.padding})
      : super(key: key);

  @override
  _QButtonState createState() => _QButtonState();
}

class _QButtonState extends State<QButton> {
  bool _isInClick = false;
  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry _padding =
        EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10);
    if (widget.padding != null) _padding = widget.padding;
    return AnimatedOpacity(
        opacity: widget.isEnabled ? 1.0 : 0.7,
        duration: Duration(milliseconds: 200),
        child: RaisedButton(
          child: Padding(padding: _padding, child: getChild(context)),
          color: widget.color,
          onPressed: () {
            setState(() {
              if (_isInClick || widget.isEnabled == false) {
                if (widget.disabledTextToast != null &&
                    widget.disabledTextToast.isNotEmpty) {
                  AppDialogs().makeToastDark(widget.disabledTextToast);
                }
                return;
              }
              _isInClick = true;
              if (widget.onClick != null) widget.onClick();
              _isInClick = false;
            });
          },
          elevation: 6.0,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadiusDirectional.circular(8)),
        ));
  }

  Widget getChild(BuildContext context) {
    if (widget.allowLoading == false)
      return Center(
        child: widget.child,
      );
    return Stack(
      fit: StackFit.loose,
      children: [
        Center(
          child: widget.child,
        ),
        if (_isInClick && widget.allowLoading)
          Positioned(left: 2, child: customLoading(context))
      ],
    );
  }

  Widget customLoading(BuildContext context) {
    return CustomLoading(Colors.white);
  }
}
