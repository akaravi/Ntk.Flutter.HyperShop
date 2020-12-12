// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authUserSignOutModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserSignOutModel _$AuthUserSignOutModelFromJson(Map<String, dynamic> json) {
  return AuthUserSignOutModel(
    tokens: (json['Tokens'] as List).map((e) => e as String).toList(),
    allToken: json['AllToken'] as bool,
  );
}

Map<String, dynamic> _$AuthUserSignOutModelToJson(
        AuthUserSignOutModel instance) =>
    <String, dynamic>{
      'Tokens': instance.tokens,
      'AllToken': instance.allToken,
    };
