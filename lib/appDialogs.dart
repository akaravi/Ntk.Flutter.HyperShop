import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hypertools/theme/theme.dart';

import 'widgets/awesome_dialog/awesome_dialog.dart';

class AppDialogs {
  Future<void> showPopupSimpleError(
      BuildContext context, String message) async {
    await AwesomeDialog(
      context: context,
      dialogType: DialogType.ERROR,
      animType: AnimType.BOTTOMSLIDE,
      tittle: 'Error !',
      descTextAlign: TextAlign.left,
      desc: message,
      btnOkColor: Colors.blueAccent,
      btnOkText: 'OK',
      btnOkOnPress: () {},
    ).show();
  }

  Future<void> showPopupSimpleSuccess(
      BuildContext context, String message) async {
    await AwesomeDialog(
      context: context,
      dialogType: DialogType.SUCCES,
      animType: AnimType.BOTTOMSLIDE,
      tittle: 'SUCCES !',
      descTextAlign: TextAlign.left,
      desc: message,
      btnOkColor: Colors.blueAccent,
      btnOkText: 'OK',
      btnOkOnPress: () {},
    ).show();
  }

  Future<void> showPopupSimpleWarning(
      BuildContext context, String message) async {
    await AwesomeDialog(
      context: context,
      dialogType: DialogType.WARNING,
      animType: AnimType.BOTTOMSLIDE,
      tittle: 'Warning !',
      descTextAlign: TextAlign.left,
      desc: message,
      btnOkColor: Colors.blueAccent,
      btnOkText: 'OK',
      btnOkOnPress: () {},
    ).show();
  }

  void makeToastDark(String desc) {
    Fluttertoast.showToast(
        msg: desc,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color000F25,
        textColor: colorFFFFFF,
        fontSize: 14.0);
  }
}
