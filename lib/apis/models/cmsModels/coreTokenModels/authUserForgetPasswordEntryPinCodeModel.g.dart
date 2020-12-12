// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authUserForgetPasswordEntryPinCodeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserForgetPasswordEntryPinCodeModel
    _$AuthUserForgetPasswordEntryPinCodeModelFromJson(
        Map<String, dynamic> json) {
  return AuthUserForgetPasswordEntryPinCodeModel(
    captchaKey: json['CaptchaKey'] as String,
    captchaText: json['CaptchaText'] as String,
    email: json['email'] as String,
    activateCode: json['ActivateCode'] as String,
    newPassword: json['NewPassword'] as String,
  );
}

Map<String, dynamic> _$AuthUserForgetPasswordEntryPinCodeModelToJson(
        AuthUserForgetPasswordEntryPinCodeModel instance) =>
    <String, dynamic>{
      'CaptchaKey': instance.captchaKey,
      'CaptchaText': instance.captchaText,
      'email': instance.email,
      'ActivateCode': instance.activateCode,
      'NewPassword': instance.newPassword,
    };
