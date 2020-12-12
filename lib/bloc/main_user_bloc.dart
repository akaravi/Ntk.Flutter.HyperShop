import 'dart:async';

import 'package:hypertools/bloc/captcha_viewer_bloc.dart';
import 'package:hypertools/poco/stream_helper.dart';
import 'package:hypertools/validators/user_validator.dart';

class MainUserBloc extends Object {
  MainUserBloc() {
    initBloc();
  }

  StreamHelper<bool> acceptTermAndCondition =
      StreamHelper<bool>(initValue: false);
  StreamHelper<bool> loadingIndicator = StreamHelper<bool>(initValue: false);

  StreamHelper<bool> loginButtonIsEnabled =
      StreamHelper<bool>(initValue: false);
  StreamHelper<bool> resendSmsButtonIsEnabled =
      StreamHelper<bool>(initValue: false);

  StreamHelper<String> username = StreamHelper<String>(
      initValue: '',
      transformerCallBack: () => UserValidator().validatePhoneNumber);

  StreamHelper<int> userRegisterTabIndex = StreamHelper<int>(initValue: 0);
  StreamHelper<int> createMemberCountDown = StreamHelper<int>(initValue: 120);
  StreamHelper<String> userSmsEntered = StreamHelper<String>(initValue: '');
  StreamHelper<int> mainTabIndex = StreamHelper<int>(initValue: 0);
  StreamHelper<bool> openAppDrawer = StreamHelper<bool>(initValue: false);

  Timer prevTimer;
  Future<bool> createMember() async {
    resendSmsButtonIsEnabled.changeValue(false);
    if (prevTimer != null) prevTimer.cancel();
    createMemberCountDown.changeValue(120);
    userRegisterTabIndex.changeValue(1);
    prevTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      createMemberCountDown.changeValue(createMemberCountDown.lastValue - 1);
      if (createMemberCountDown.lastValue == 0) {
        prevTimer.cancel();
        resendSmsButtonIsEnabled.changeValue(true);
      }
    });
  }

  CaptchaViewerBloc captchaBloc;

  void initBloc() {
    captchaBloc = CaptchaViewerBloc(this);
    loginButtonIsEnabled
        .combine(username.stream, captchaBloc.captchaUserValue.stream, (a, b) {
      if (a == null || b == null) return false;
      if (a.toString().isEmpty || b.toString().isEmpty) return false;
      if (a.toString() == '' || b.toString() == '') return false;
      return true;
    });
  }

  void dispose() {
    acceptTermAndCondition.close();
  }
}
