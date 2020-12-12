// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authUserSignInBySmsDtoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserSignInBySmsDtoModel _$AuthUserSignInBySmsDtoModelFromJson(
    Map<String, dynamic> json) {
  return AuthUserSignInBySmsDtoModel(
    captchaKey: json['CaptchaKey'] as String,
    captchaText: json['CaptchaText'] as String,
    mobile: json['Mobile'] as String,
    code: json['Code'] as String,
    lang: json['lang'] as String,
    siteId: json['SiteId'] as int,
    resellerSiteId: json['ResellerSiteId'] as int,
    isRemember: json['IsRemember'] as bool,
  );
}

Map<String, dynamic> _$AuthUserSignInBySmsDtoModelToJson(
        AuthUserSignInBySmsDtoModel instance) =>
    <String, dynamic>{
      'CaptchaKey': instance.captchaKey,
      'CaptchaText': instance.captchaText,
      'Mobile': instance.mobile,
      'Code': instance.code,
      'lang': instance.lang,
      'SiteId': instance.siteId,
      'ResellerSiteId': instance.resellerSiteId,
      'IsRemember': instance.isRemember,
    };
