// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authUserSignInModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserSignInModel _$AuthUserSignInModelFromJson(Map<String, dynamic> json) {
  return AuthUserSignInModel(
    captchaKey: json['CaptchaKey'] as String,
    captchaText: json['CaptchaText'] as String,
    email: json['Email'] as String,
    mobile: json['Mobile'] as String,
    password: json['Password'] as String,
    isRemember: json['IsRemember'] as bool,
    siteId: json['SiteId'] as int,
    resellerSiteId: json['ResellerSiteId'] as int,
    lang: json['lang'] as String,
  );
}

Map<String, dynamic> _$AuthUserSignInModelToJson(
        AuthUserSignInModel instance) =>
    <String, dynamic>{
      'CaptchaKey': instance.captchaKey,
      'CaptchaText': instance.captchaText,
      'Email': instance.email,
      'Mobile': instance.mobile,
      'Password': instance.password,
      'IsRemember': instance.isRemember,
      'SiteId': instance.siteId,
      'ResellerSiteId': instance.resellerSiteId,
      'lang': instance.lang,
    };
