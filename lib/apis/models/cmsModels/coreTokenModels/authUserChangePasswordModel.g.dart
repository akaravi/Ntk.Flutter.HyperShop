// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authUserChangePasswordModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserChangePasswordModel _$AuthUserChangePasswordModelFromJson(
    Map<String, dynamic> json) {
  return AuthUserChangePasswordModel(
    oldPassword: json['OldPassword'] as String,
    newPassword: json['NewPassword'] as String,
  );
}

Map<String, dynamic> _$AuthUserChangePasswordModelToJson(
        AuthUserChangePasswordModel instance) =>
    <String, dynamic>{
      'OldPassword': instance.oldPassword,
      'NewPassword': instance.newPassword,
    };
