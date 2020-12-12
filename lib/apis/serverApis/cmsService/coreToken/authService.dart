import 'package:hypertools/poco/api_server_base.dart';

import 'package:hypertools/apis/models/cmsModels/coreTokenModels/dateModel.dart';
import 'package:hypertools/poco/errorExceptionResult.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/captchaInfoModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/tokenInfoModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/authUserSignUpModel.dart';
import 'package:hypertools/apis/models/cmsDtoModels/coreToken/tokenDeviceClientInfoDtoModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/authUserSignInModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/authUserSignInBySmsDtoModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/authRenewTokenModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/authUserChangePasswordModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/authUserForgetPasswordModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/authUserForgetPasswordEntryPinCodeModel.dart';
import 'package:hypertools/apis/models/cmsModels/coreTokenModels/authUserSignOutModel.dart';
import 'package:hypertools/apis/models/cmsModels/modelBase/apiFilterModel.dart';

class AuthService extends ApiServerBase {
  AuthService() {
    moduleCotrolerUrl = 'auth/';
  }
  Future<DateModel> serviceGetDate() async {
    var url = baseUrl + moduleCotrolerUrl + 'date';
    return await callApiGetBaseAsync<DateModel>(
        url, baseHeaders, DateModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<CaptchaInfoModel>> serviceCaptchaAsync() async {
    var url = baseUrl + moduleCotrolerUrl + 'Captcha';
    return await callApiGetAsync<CaptchaInfoModel>(
        url, baseHeaders, CaptchaInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>> serviceSignupUserAsync(
      AuthUserSignUpModel model) async {
    var url = baseUrl + moduleCotrolerUrl + 'signup';
    return await callApiPostAsync<AuthUserSignUpModel, TokenInfoModel>(
        url, model, baseHeaders, model.toJson, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>>
      serviceGetCorrentTokenAsync() async {
    var url = baseUrl + moduleCotrolerUrl + 'CorrentToken';
    return await callApiGetAsync<TokenInfoModel>(
        url, baseHeaders, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>> serviceGetTokenDeviceAsync(
      TokenDeviceClientInfoDtoModel model) async {
    var url = baseUrl + moduleCotrolerUrl + 'GetTokenDevice';
    return await callApiPostAsync<TokenDeviceClientInfoDtoModel,
            TokenInfoModel>(
        url, model, baseHeaders, model.toJson, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>> serviceSigninUserAsync(
      AuthUserSignInModel model) async {
    var url = baseUrl + moduleCotrolerUrl + 'signin';
    return await callApiPostAsync<AuthUserSignInModel, TokenInfoModel>(
        url, model, baseHeaders, model.toJson, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>> serviceSigninUserBySmsAsync(
      AuthUserSignInBySmsDtoModel model) async {
    var url = baseUrl + moduleCotrolerUrl + 'signin';
    return await callApiPostAsync<AuthUserSignInBySmsDtoModel, TokenInfoModel>(
        url, model, baseHeaders, model.toJson, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>> serviceRenewTokenAsync(
      AuthRenewTokenModel model) async {
    var url = baseUrl + moduleCotrolerUrl + 'RenewToken';
    return await callApiPostAsync<AuthRenewTokenModel, TokenInfoModel>(
        url, model, baseHeaders, model.toJson, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>> serviceChangePasswordAsync(
      AuthUserChangePasswordModel model) async {
    var url = baseUrl + moduleCotrolerUrl + 'ChangePassword';
    return await callApiPostAsync<AuthUserChangePasswordModel, TokenInfoModel>(
        url, model, baseHeaders, model.toJson, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>> serviceForgetPasswordAsync(
      AuthUserForgetPasswordModel model) async {
    var url = baseUrl + moduleCotrolerUrl + 'ForgetPassword';
    return await callApiPostAsync<AuthUserForgetPasswordModel, TokenInfoModel>(
        url, model, baseHeaders, model.toJson, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>>
      serviceForgetPasswordEntryPinCodeAsync(
          AuthUserForgetPasswordEntryPinCodeModel model) async {
    var url = baseUrl + moduleCotrolerUrl + 'ForgetPasswordEntryPinCode';
    return await callApiPostAsync<AuthUserForgetPasswordEntryPinCodeModel,
            TokenInfoModel>(
        url, model, baseHeaders, model.toJson, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>> serviceLogoutAsync(
      AuthUserSignOutModel model) async {
    var url = baseUrl + moduleCotrolerUrl + 'signOut';
    return await callApiPostAsync<AuthUserSignOutModel, TokenInfoModel>(
        url, model, baseHeaders, model.toJson, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>> serviceLogoutAsync2() async {
    var url = baseUrl + moduleCotrolerUrl + 'signOut';
    return await callApiGetAsync<TokenInfoModel>(
        url, baseHeaders, TokenInfoModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<TokenInfoModel>> serviceExistTokenAsync(
      ApiFilterModel model) async {
    var url = baseUrl + moduleCotrolerUrl + 'existToken';
    return await callApiPostAsync<ApiFilterModel, TokenInfoModel>(
        url, model, baseHeaders, model.toJson, TokenInfoModel.fromJsonObject);
  }
  // Future<ErrorExcptionResult> serviceExistTokenAsync2(AuthMobileConfirmDtoModel model) async
  // {
  //     var url = baseUrl + moduleCotrolerUrl + 'mobileConfirm';
  //     return await callApiPostAsync<AuthMobileConfirmDtoModel>(url, model, baseHeaders,AuthMobileConfirmDtoModel.fromJsonObject);
  // }
  // Future<ErrorExcptionResult> serviceExistTokenAsync2(AuthEmailConfirmDtoModel model) async
  // {
  //     var url = baseUrl + moduleCotrolerUrl + 'emailConfirm';
  //     return await callApiPostAsync<AuthEmailConfirmDtoModel>(url, model, baseHeaders,AuthEmailConfirmDtoModel.fromJsonObject);
  // }

}
