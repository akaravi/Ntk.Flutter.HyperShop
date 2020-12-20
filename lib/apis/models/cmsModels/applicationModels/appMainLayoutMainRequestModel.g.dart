// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appMainLayoutMainRequestModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppMainLayoutMainRequestModel _$AppMainLayoutMainRequestModelFromJson(
    Map<String, dynamic> json) {
  return AppMainLayoutMainRequestModel(
    userId: json['UserId'] as int,
    memberUserId: json['MemberUserId'] as int,
    siteId: json['SiteId'] as int,
    appTitle: json['AppTitle'] as String,
    appUrl: json['AppUrl'] as String,
    appId: json['AppId'] as int,
    appVersion: json['AppVersion'] as int,
    lastUpdateSource: json['LastUpdateSource'] == null
        ? null
        : DateTime.parse(json['LastUpdateSource'] as String),
    lastUpdateTheme: json['LastUpdateTheme'] == null
        ? null
        : DateTime.parse(json['LastUpdateTheme'] as String),
    lastUpdateApp: json['LastUpdateApp'] == null
        ? null
        : DateTime.parse(json['LastUpdateApp'] as String),
    appForceUpdate: json['AppForceUpdate'] as bool,
    appThemeId: json['AppThemeId'] as int,
  );
}

Map<String, dynamic> _$AppMainLayoutMainRequestModelToJson(
        AppMainLayoutMainRequestModel instance) =>
    <String, dynamic>{
      'UserId': instance.userId,
      'MemberUserId': instance.memberUserId,
      'SiteId': instance.siteId,
      'AppTitle': instance.appTitle,
      'AppUrl': instance.appUrl,
      'AppId': instance.appId,
      'AppVersion': instance.appVersion,
      'LastUpdateSource': instance.lastUpdateSource?.toIso8601String(),
      'LastUpdateTheme': instance.lastUpdateTheme?.toIso8601String(),
      'LastUpdateApp': instance.lastUpdateApp?.toIso8601String(),
      'AppForceUpdate': instance.appForceUpdate,
      'AppThemeId': instance.appThemeId,
    };
