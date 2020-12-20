// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captchaInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaptchaInfoModel _$CaptchaInfoModelFromJson(Map<String, dynamic> json) {
  return CaptchaInfoModel(
    expire: json['Expire'] == null
        ? null
        : DateTime.parse(json['Expire'] as String),
    key: json['Key'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$CaptchaInfoModelToJson(CaptchaInfoModel instance) =>
    <String, dynamic>{
      'Expire': instance.expire?.toIso8601String(),
      'Key': instance.key,
      'image': instance.image,
    };
