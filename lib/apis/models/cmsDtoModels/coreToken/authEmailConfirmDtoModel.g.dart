// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authEmailConfirmDtoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthEmailConfirmDtoModel _$AuthEmailConfirmDtoModelFromJson(
    Map<String, dynamic> json) {
  return AuthEmailConfirmDtoModel(
    captchaKey: json['CaptchaKey'] as String,
    captchaText: json['CaptchaText'] as String,
    linkUserId: json['LinkUserId'] as int,
    email: json['Email'] as String,
    code: json['Code'] as String,
  );
}

Map<String, dynamic> _$AuthEmailConfirmDtoModelToJson(
        AuthEmailConfirmDtoModel instance) =>
    <String, dynamic>{
      'CaptchaKey': instance.captchaKey,
      'CaptchaText': instance.captchaText,
      'LinkUserId': instance.linkUserId,
      'Email': instance.email,
      'Code': instance.code,
    };
