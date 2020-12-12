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
    createdDate: DateTime.parse(json['CreatedDate'] as String),
    tokenExpireDate: DateTime.parse(json['tokenExpireDate'] as String),
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
    userType: _$enumDecode(
        _$EnumManageUserAccessControllerTypesEnumMap, json['UserType']),
    userAccessAreaType: _$enumDecode(
        _$ManageUserAccessAreaTypesEnumEnumMap, json['UserAccessAreaType']),
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
      'CreatedDate': instance.createdDate.toIso8601String(),
      'tokenExpireDate': instance.tokenExpireDate.toIso8601String(),
      'UserId': instance.userId,
      'DeviceId': instance.deviceId,
      'ApplicationId': instance.applicationId,
      'SiteId': instance.siteId,
      'UserGroupId': instance.userGroupId,
      'UserTypeTitle': instance.userTypeTitle,
      'UserAccessAdminAllowToProfessionalData':
          instance.userAccessAdminAllowToProfessionalData,
      'UserAccessAdminAllowToAllData': instance.userAccessAdminAllowToAllData,
      'UserType':
          _$EnumManageUserAccessControllerTypesEnumMap[instance.userType],
      'UserAccessAreaType':
          _$ManageUserAccessAreaTypesEnumEnumMap[instance.userAccessAreaType],
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

const _$EnumManageUserAccessControllerTypesEnumMap = {
  EnumManageUserAccessControllerTypes.None: 'None',
  EnumManageUserAccessControllerTypes.AccessDenay: 'AccessDenay',
  EnumManageUserAccessControllerTypes.All: 'All',
  EnumManageUserAccessControllerTypes.SystemFullAccess: 'SystemFullAccess',
  EnumManageUserAccessControllerTypes.SystemPayment: 'SystemPayment',
  EnumManageUserAccessControllerTypes.SystemRender: 'SystemRender',
  EnumManageUserAccessControllerTypes.SystemAppBuilder: 'SystemAppBuilder',
  EnumManageUserAccessControllerTypes.SystemOptimizer: 'SystemOptimizer',
  EnumManageUserAccessControllerTypes.SystemSchedule: 'SystemSchedule',
  EnumManageUserAccessControllerTypes.AdminMainCms: 'AdminMainCms',
  EnumManageUserAccessControllerTypes.SupportMainCms: 'SupportMainCms',
  EnumManageUserAccessControllerTypes.MonitoringMainCms: 'MonitoringMainCms',
  EnumManageUserAccessControllerTypes.DemoMainCms: 'DemoMainCms',
  EnumManageUserAccessControllerTypes.AdminResellerCms: 'AdminResellerCms',
  EnumManageUserAccessControllerTypes.SupportResellerCms: 'SupportResellerCms',
  EnumManageUserAccessControllerTypes.MonitoringResellerCms:
      'MonitoringResellerCms',
  EnumManageUserAccessControllerTypes.DemoResellerCms: 'DemoResellerCms',
  EnumManageUserAccessControllerTypes.AdminCpSite: 'AdminCpSite',
  EnumManageUserAccessControllerTypes.SupportCpSite: 'SupportCpSite',
  EnumManageUserAccessControllerTypes.MonitoringCpSite: 'MonitoringCpSite',
  EnumManageUserAccessControllerTypes.DemoCpSite: 'DemoCpSite',
  EnumManageUserAccessControllerTypes.GuestViewerWebSite: 'GuestViewerWebSite',
  EnumManageUserAccessControllerTypes.UserLoginWebSite: 'UserLoginWebSite',
  EnumManageUserAccessControllerTypes.DemoUserLoginWebSite:
      'DemoUserLoginWebSite',
};

const _$ManageUserAccessAreaTypesEnumEnumMap = {
  ManageUserAccessAreaTypesEnum.None: 'None',
  ManageUserAccessAreaTypesEnum.All: 'All',
  ManageUserAccessAreaTypesEnum.BackgroundSystem: 'BackgroundSystem',
  ManageUserAccessAreaTypesEnum.WindowsService: 'WindowsService',
  ManageUserAccessAreaTypesEnum.ControlPanel: 'ControlPanel',
  ManageUserAccessAreaTypesEnum.Website: 'Website',
  ManageUserAccessAreaTypesEnum.WebService: 'WebService',
  ManageUserAccessAreaTypesEnum.Application: 'Application',
  ManageUserAccessAreaTypesEnum.BackgroundTaskScheduler:
      'BackgroundTaskScheduler',
};
