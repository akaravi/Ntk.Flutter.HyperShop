// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authUserSignUpModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserSignUpModel _$AuthUserSignUpModelFromJson(Map<String, dynamic> json) {
  return AuthUserSignUpModel(
    captchaKey: json['CaptchaKey'] as String,
    captchaText: json['CaptchaText'] as String,
    email: json['Email'] as String,
    mobile: json['Mobile'] as String,
    password: json['Password'] as String,
    name: json['Name'] as String,
    family: json['Family'] as String,
    siteId: json['SiteId'] as int,
    resellerSiteId: json['ResellerSiteId'] as int,
  );
}

Map<String, dynamic> _$AuthUserSignUpModelToJson(
        AuthUserSignUpModel instance) =>
    <String, dynamic>{
      'CaptchaKey': instance.captchaKey,
      'CaptchaText': instance.captchaText,
      'Email': instance.email,
      'Mobile': instance.mobile,
      'Password': instance.password,
      'Name': instance.name,
      'Family': instance.family,
      'SiteId': instance.siteId,
      'ResellerSiteId': instance.resellerSiteId,
    };
