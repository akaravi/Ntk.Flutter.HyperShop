import '../awesome_dialog.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FlareHeader extends StatelessWidget {
  const FlareHeader({Key key, @required this.dialogType}) : super(key: key);
  final DialogType dialogType;

  @override
  Widget build(BuildContext context) {
    switch (dialogType) {
      case DialogType.INFO:
        return Image.asset(
          'assets/images/information.png',
          fit: BoxFit.cover,
        );
        break;
      case DialogType.WARNING:
        return Image.asset(
          'assets/images/alert.png',
          fit: BoxFit.cover,
        );
        break;
      case DialogType.ERROR:
        return Image.asset(
          'assets/images/alert.png',
          fit: BoxFit.cover,
        );
        break;
      case DialogType.SUCCES:
        return Image.asset(
          'assets/images/checked.png',
          fit: BoxFit.cover,
        );
        break;
    }
    return Image.asset(
      'assets/images/information.png',
      fit: BoxFit.cover,
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   switch (dialogType) {
  //     case DialogType.INFO:
  //       return FlareActor(
  //         "assets/flare/info.flr",
  //         alignment: Alignment.center,
  //         fit: BoxFit.cover,
  //         animation: 'appear',
  //       );
  //       break;
  //     case DialogType.WARNING:
  //       return FlareActor(
  //         "assets/flare/warning.flr",
  //         alignment: Alignment.center,
  //         fit: BoxFit.cover,
  //         animation: 'appear',
  //       );
  //       break;
  //     case DialogType.ERROR:
  //       return FlareActor(
  //         "assets/flare/error.flr",
  //         alignment: Alignment.center,
  //         fit: BoxFit.fill,
  //         animation: 'Error',
  //       );
  //       break;
  //     case DialogType.SUCCES:
  //       return FlareActor(
  //         "assets/flare/succes.flr",
  //         alignment: Alignment.center,
  //         fit: BoxFit.fill,
  //         animation: 'Untitled',
  //       );
  //       break;
  //     default:
  //       return FlareActor(
  //         "assets/flare/info.flr",
  //         alignment: Alignment.center,
  //         fit: BoxFit.cover,
  //         animation: 'appear',
  //       );
  //   }
  // }
}
