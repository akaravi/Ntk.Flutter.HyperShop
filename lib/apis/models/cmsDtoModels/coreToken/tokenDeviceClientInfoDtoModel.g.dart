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
    oSType: _$enumDecode(_$EnumOperatingSystemTypeEnumMap, json['OSType']),
    deviceType: _$enumDecode(_$EnumDeviceTypeEnumMap, json['DeviceType']),
    packageName: json['PackageName'] as String,
  );
}

Map<String, dynamic> _$TokenDeviceClientInfoDtoModelToJson(
        TokenDeviceClientInfoDtoModel instance) =>
    <String, dynamic>{
      'SecurityKey': instance.securityKey,
      'NotificationId': instance.notificationId,
      'ClientMACAddress': instance.clientMACAddress,
      'OSType': _$EnumOperatingSystemTypeEnumMap[instance.oSType],
      'DeviceType': _$EnumDeviceTypeEnumMap[instance.deviceType],
      'PackageName': instance.packageName,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

const _$EnumOperatingSystemTypeEnumMap = {
  EnumOperatingSystemType.none: 'none',
  EnumOperatingSystemType.Windows: 'Windows',
  EnumOperatingSystemType.AppleMacOS: 'AppleMacOS',
  EnumOperatingSystemType.Linux: 'Linux',
  EnumOperatingSystemType.AppleIOS: 'AppleIOS',
  EnumOperatingSystemType.GoogleAndroid: 'GoogleAndroid',
  EnumOperatingSystemType.OxygenOS: 'OxygenOS',
  EnumOperatingSystemType.Chromium: 'Chromium',
};

const _$EnumDeviceTypeEnumMap = {
  EnumDeviceType.none: 'none',
  EnumDeviceType.WebSite: 'WebSite',
  EnumDeviceType.Windows: 'Windows',
  EnumDeviceType.Android: 'Android',
  EnumDeviceType.AppleIOS: 'AppleIOS',
};
