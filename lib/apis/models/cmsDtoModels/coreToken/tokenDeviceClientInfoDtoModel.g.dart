// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokenDeviceClientInfoDtoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenDeviceClientInfoDtoModel _$TokenDeviceClientInfoDtoModelFromJson(
    Map<String, dynamic> json) {
  return TokenDeviceClientInfoDtoModel(
    securityKey: json['SecurityKey'] as String,
    notificationId: json['NotificationId'] as String,
    clientMACAddress: json['ClientMACAddress'] as String,
    packageName: json['PackageName'] as String,
  );
}

Map<String, dynamic> _$TokenDeviceClientInfoDtoModelToJson(
        TokenDeviceClientInfoDtoModel instance) =>
    <String, dynamic>{
      'SecurityKey': instance.securityKey,
      'NotificationId': instance.notificationId,
      'ClientMACAddress': instance.clientMACAddress,
      'PackageName': instance.packageName,
    };
