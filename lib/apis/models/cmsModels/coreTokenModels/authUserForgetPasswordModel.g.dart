// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authUserForgetPasswordModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserForgetPasswordModel _$AuthUserForgetPasswordModelFromJson(
    Map<String, dynamic> json) {
  return AuthUserForgetPasswordModel(
    captchaKey: json['CaptchaKey'] as String,
    captchaText: json['CaptchaText'] as String,
    email: json['Email'] as String,
    mobile: json['Mobile'] as String,
  );
}

Map<String, dynamic> _$AuthUserForgetPasswordModelToJson(
        AuthUserForgetPasswordModel instance) =>
    <String, dynamic>{
      'CaptchaKey': instance.captchaKey,
      'CaptchaText': instance.captchaText,
      'Email': instance.email,
      'Mobile': instance.mobile,
    };
