import 'package:hypertools/apis/models/cmsModels/coreTokenModels/captchaInfoModel.dart';
import 'package:hypertools/apis/serverApis/cmsService/coreToken/authService.dart';
import 'package:hypertools/poco/stream_helper.dart';

import 'main_user_bloc.dart';

class CaptchaViewerBloc extends Object {
  final MainUserBloc parent;
  final StreamHelper<String> streamNotConnected;
  CaptchaViewerBloc(this.parent, {this.streamNotConnected});

  StreamHelper<bool> loadingIndicator = StreamHelper<bool>(initValue: false);
  StreamHelper<String> captchaUserValue = StreamHelper<String>(initValue: '');
  StreamHelper<String> captchaImageUrl = StreamHelper<String>(initValue: '');
  CaptchaInfoModel model;
  Future<void> refreshCaptcha() async {
    if (loadingIndicator.lastValue != null &&
        loadingIndicator.lastValue == true) return;
    captchaImageUrl.changeValue('');
    captchaUserValue.changeValue('');
    loadingIndicator.changeValue(true);
    AuthService service = AuthService();
    var rt = await service.serviceCaptchaAsync();
    if (rt.isSuccess) {
      model = rt.item;
      captchaImageUrl.changeValue(model.image);
    } else
      captchaUserValue.changeError(rt.errorMessage);
    loadingIndicator.changeValue(false);
  }
}
