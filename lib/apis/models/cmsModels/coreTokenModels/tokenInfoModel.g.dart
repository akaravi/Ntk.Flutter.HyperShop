// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokenInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenInfoModel _$TokenInfoModelFromJson(Map<String, dynamic> json) {
  return TokenInfoModel(
    token: json['token'] as String,
    refresh_token: json['refresh_token'] as String,
    deviceToken: json['DeviceToken'] as String,
    createdDate: json['CreatedDate'] == null
        ? null
        : DateTime.parse(json['CreatedDate'] as String),
    tokenExpireDate: json['tokenExpireDate'] == null
        ? null
        : DateTime.parse(json['tokenExpireDate'] as String),
    userId: json['UserId'] as int,
    deviceId: json['DeviceId'] as int,
    applicationId: json['ApplicationId'] as int,
    siteId: json['SiteId'] as int,
    userGroupId: json['UserGroupId'] as int,
    userTypeTitle: json['UserTypeTitle'] as String,
    userAccessAdminAllowToProfessionalData:
        json['UserAccessAdminAllowToProfessionalData'] as bool,
    userAccessAdminAllowToAllData:
        json['UserAccessAdminAllowToAllData'] as bool,
    username: json['Username'] as String,
    name: json['Name'] as String,
    lastName: json['LastName'] as String,
    fullName: json['FullName'] as String,
    language: json['Language'] as String,
    domain: json['Domain'] as String,
    subDomain: json['SubDomain'] as String,
    title: json['Title'] as String,
    photoUrl: json['PhotoUrl'] as String,
    mobileConfirmed: json['MobileConfirmed'] as bool,
    emailConfirmed: json['EmailConfirmed'] as bool,
  );
}

Map<String, dynamic> _$TokenInfoModelToJson(TokenInfoModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh_token': instance.refresh_token,
      'DeviceToken': instance.deviceToken,
      'CreatedDate': instance.createdDate?.toIso8601String(),
      'tokenExpireDate': instance.tokenExpireDate?.toIso8601String(),
      'UserId': instance.userId,
      'DeviceId': instance.deviceId,
      'ApplicationId': instance.applicationId,
      'SiteId': instance.siteId,
      'UserGroupId': instance.userGroupId,
      'UserTypeTitle': instance.userTypeTitle,
      'UserAccessAdminAllowToProfessionalData':
          instance.userAccessAdminAllowToProfessionalData,
      'UserAccessAdminAllowToAllData': instance.userAccessAdminAllowToAllData,
      'Username': instance.username,
      'Name': instance.name,
      'LastName': instance.lastName,
      'FullName': instance.fullName,
      'Language': instance.language,
      'Domain': instance.domain,
      'SubDomain': instance.subDomain,
      'Title': instance.title,
      'PhotoUrl': instance.photoUrl,
      'MobileConfirmed': instance.mobileConfirmed,
      'EmailConfirmed': instance.emailConfirmed,
    };
