import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationAppModel.dart';
import 'package:hypertools/poco/database_local.dart';
import 'package:hypertools/poco/stream_helper.dart';
import 'package:hypertools/theme/theme.dart';
import 'main_user_bloc.dart';

class UpdateAppBloc extends Object {
  final MainUserBloc parent;
  ApplicationAppModel model;
  UpdateAppBloc(this.parent);
  int get appVersion => currentAppVersion;
  StreamHelper<bool> hasUpdate = StreamHelper<bool>(initValue: false);
  StreamHelper<bool> hasForceUpdate = StreamHelper<bool>(initValue: false);
  String apkFileName;
  bool get updateAvailable =>
      model != null && model.appVersion > currentAppVersion;

  bool setApplicationAppModel(ApplicationAppModel appmodel) {
    model = appmodel;
    var spl = appmodel.downloadLinkUpdateSrcByDomain.split('/');
    apkFileName = spl[spl.length - 1];
    if (currentAppVersion < model.appVersion) {
      if (model.forceUpdate) {
        hasForceUpdate.changeValue(true);
        return false;
      } else
        hasUpdate.changeValue(true);
    }
    return true;
  }

  Future<void> neverShowAgainUpdate() async {
    await LocalDatabase.setBool(
        LocalDatabase.appVersionKey + model.appVersion.toString(), false);
  }

  bool get showPopupUpdate => !LocalDatabase.containsKey(
      LocalDatabase.appVersionKey + model.appVersion.toString());
}
