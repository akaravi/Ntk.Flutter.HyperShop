import 'dart:async';
import 'dart:io';

import 'package:hypertools/apis/models/cmsModels/coreTokenModels/authUserSignInBySmsDtoModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/authUserSignUpModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/dateModel.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/apis/models/models/filterDataModel.dart';
import 'package:hypertools/apis/models/models/filterModel.dart';
import 'package:hypertools/apis/serverApis/cmsService/application/applicationAppService.dart';
import 'package:hypertools/apis/serverApis/cmsService/coreToken/authService.dart';
import 'package:hypertools/apis/serverApis/cmsService/hyperShop/hyperShopContentService.dart';
import 'package:hypertools/bloc/captcha_viewer_bloc.dart';
import 'package:hypertools/bloc/update_app_bloc.dart';
import 'package:hypertools/poco/ErrorExceptionResultBase.dart';
import 'package:hypertools/poco/database_local.dart';
import 'package:hypertools/poco/errorExceptionResult.dart';
import 'package:hypertools/poco/stream_helper.dart';
import 'package:hypertools/validators/user_validator.dart';
import 'package:hypertools/apis/models/cmsDtoModels/coreToken/tokenDeviceClientInfoDtoModel.dart';
import 'package:hypertools/poco/enum_values.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:hypertools/theme/theme.dart';

import 'category_controller_bloc.dart';
import 'order_bloc.dart';

class MainUserBloc extends Object {
  MainUserBloc() {
    initBloc();
  }
  static String deviceTokenData = '';

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

  StreamHelper<String> productNameToSearch = StreamHelper<String>(
      initValue: '',
      transformerCallBack: () => ProductValidator().validateProductName);
  StreamHelper<bool> productSearchLoading =
      StreamHelper<bool>(initValue: false);

  StreamHelper<int> userRegisterTabIndex = StreamHelper<int>(initValue: 0);
  StreamHelper<int> createMemberCountDown = StreamHelper<int>(initValue: 120);
  StreamHelper<String> userSmsEntered = StreamHelper<String>(initValue: '');
  StreamHelper<int> mainTabIndex = StreamHelper<int>(initValue: 0);
  StreamHelper<bool> openAppDrawer = StreamHelper<bool>(initValue: false);
  StreamHelper<bool> isInOfflineMode = StreamHelper<bool>(initValue: false);
  StreamHelper<String> notConnectedToInternet =
      StreamHelper<String>(initValue: '');

  ErrorExceptionResult<HyperShopContentModel> lastSearchResult;
  bool userHasLogined = false;

  Timer prevTimer;
  Future<bool> createMemberUser() async {
    resendSmsButtonIsEnabled.changeValue(false);

    var service = AuthService();
    service.setAuthorizationToken('', deviceToken: deviceTokenData);
    var signUp = await service.serviceSignupUserAsync(AuthUserSignUpModel(
        captchaKey: captchaBloc.model.key,
        captchaText: captchaBloc.captchaUserValue.lastValue,
        mobile: username.lastValue,
        password: await PlatformDeviceId.getDeviceId));
    if (signUp.isSuccess) {
      print(signUp.item.toJson());
    }
    // else
    print(signUp.errorMessage);
    var rt = await service.serviceSigninUserBySmsAsync(
        AuthUserSignInBySmsDtoModel(
            captchaKey: captchaBloc.model.key,
            captchaText: captchaBloc.captchaUserValue.lastValue,
            isRemember: true,
            mobile: username.lastValue,
            code: await PlatformDeviceId.getDeviceId));
    if (rt.isSuccess) {
      print(rt.item.toJson());
    } else
      print(rt.errorMessage);

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
    return true;
  }

  CaptchaViewerBloc captchaBloc;
  UpdateAppBloc updateAppBloc;
  OrderBloc orderBloc;
  CategoryControllerBloc categoryControllerBloc;
  void initBloc() {
    captchaBloc =
        CaptchaViewerBloc(this, streamNotConnected: notConnectedToInternet);
    updateAppBloc = UpdateAppBloc(this);
    orderBloc = OrderBloc(this);
    categoryControllerBloc = CategoryControllerBloc(this);
    loginButtonIsEnabled
        .combine(username.stream, captchaBloc.captchaUserValue.stream, (a, b) {
      if (a == null || b == null) return false;
      if (a.toString().isEmpty || b.toString().isEmpty) return false;
      if (a.toString() == '' || b.toString() == '') return false;
      return true;
    });
  }

  DateModel serverDate;

  bool innerShowAcceptTermPage = false;
  bool isInInitData = false;
  Future<ErrorExceptionResultBase> initializeData() async {
    if (isInInitData) return null;
    var uiResultType = ErrorExceptionResultType.none;
    isInInitData = true;
    await LocalDatabase.init();
    print('in init');
    var service = AuthService();
    if (!await service.isConnectedToInternet(
        streamNotConnected: notConnectedToInternet)) {
      isInInitData = false;
      uiResultType = ErrorExceptionResultType.notConnectedToInternet;
      return ErrorExceptionResultBase.fail(
          'لطفاَ اتصال به اینترنت را بررسی کنید',
          errCode: uiResultType);
    }
    var date = await service.serviceGetDate();
    if (date == null) {
      isInOfflineMode.changeValue(true);
      isInInitData = false;
      uiResultType = ErrorExceptionResultType.notConnectedToInternet;
      return ErrorExceptionResultBase.fail(
          'لطفاَ اتصال به اینترنت را بررسی کنید',
          errCode: uiResultType);
    } else {
      serverDate = date;
      await orderBloc.initBloc();
      isInOfflineMode.changeValue(false);
      var devicetype = EnumDeviceType.Android;
      var ostype = EnumOperatingSystemType.GoogleAndroid;
      if (Platform.isIOS) {
        devicetype = EnumDeviceType.AppleIOS;
        ostype = EnumOperatingSystemType.AppleIOS;
      } else if (Platform.isWindows) {
        devicetype = EnumDeviceType.Windows;
        ostype = EnumOperatingSystemType.Windows;
      } else if (Platform.isMacOS) {
        devicetype = EnumDeviceType.none;
        ostype = EnumOperatingSystemType.AppleMacOS;
      } else if (Platform.isLinux) {
        devicetype = EnumDeviceType.none;
        ostype = EnumOperatingSystemType.Linux;
      } else if (Platform.isAndroid) {
        devicetype = EnumDeviceType.Android;
        ostype = EnumOperatingSystemType.GoogleAndroid;
      } else {
        devicetype = EnumDeviceType.none;
        ostype = EnumOperatingSystemType.none;
      }
      var token = await service
          .serviceGetTokenDeviceAsync(new TokenDeviceClientInfoDtoModel(
        deviceType: devicetype,
        oSType: ostype,
        clientMACAddress: await PlatformDeviceId.getDeviceId,
        securityKey: '',
        packageName: tokenPackageName,
        notificationId: '',
      ));
      if (token.isSuccess == false) {
        uiResultType = ErrorExceptionResultType.none;
        return ErrorExceptionResultBase.fail(token.errorMessage);
      } else {
        deviceTokenData = token.item.deviceToken;
        ApplicationAppService appService = ApplicationAppService();
        appService.setAuthorizationToken('', deviceToken: deviceTokenData);
        var rt = await appService.serviceGetCurrentAppAsync();
        if (rt.isSuccess && rt.item != null) {
          bool isContinue = updateAppBloc.setApplicationAppModel(rt.item);
          if (!isContinue)
            uiResultType = ErrorExceptionResultType.hasUpdateForce;
          else
            uiResultType = ErrorExceptionResultType.hasUpdate;
        }
      }
    }
    if (showAcceptTerm) {
      if (LocalDatabase.containsKey(LocalDatabase.termAndConditionSettedKey)) {
        innerShowAcceptTermPage = false;
      } else
        innerShowAcceptTermPage = true;
    }
    isInInitData = false;
    if (uiResultType != ErrorExceptionResultType.hasUpdateForce)
      await categoryControllerBloc.getProductCategories();
    // innerShowAcceptTermPage = true;
    return ErrorExceptionResultBase.success(errCode: uiResultType);
  }

  Future<void> searchProductByName(String name) async {
    productSearchLoading.changeValue(true);
    var service = new HyperShopContentService();
    service.setAuthorizationToken('',
        deviceToken: MainUserBloc.deviceTokenData);
    var rt = await service.serviceGetAllMicroServiceAsync(FilterModel(
      filters: [
        FilterDataModel(
            propertyName: 'Name',
            value: name,
            stringValue1: name,
            clauseType: ClauseType.And,
            searchType: FilterDataModelSearchTypes.Contains)
      ],
      currentPageNumber: 0,
      rowPerPage: 99999,
    ));
    lastSearchResult = rt;
    productSearchLoading.changeValue(false);
  }

  void dispose() {
    acceptTermAndCondition.close();
  }
}
