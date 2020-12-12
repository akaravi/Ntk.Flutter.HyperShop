// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authRenewTokenModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRenewTokenModel _$AuthRenewTokenModelFromJson(Map<String, dynamic> json) {
  return AuthRenewTokenModel(
    siteId: json['SiteId'] as int,
    userId: json['UserId'] as int,
    userAccessAdminAllowToAllData:
        json['UserAccessAdminAllowToAllData'] as bool,
    userAccessAdminAllowToProfessionalData:
        json['UserAccessAdminAllowToProfessionalData'] as bool,
    lang: json['lang'] as String,
  );
}

Map<String, dynamic> _$AuthRenewTokenModelToJson(
        AuthRenewTokenModel instance) =>
    <String, dynamic>{
      'SiteId': instance.siteId,
      'UserId': instance.userId,
      'UserAccessAdminAllowToAllData': instance.userAccessAdminAllowToAllData,
      'UserAccessAdminAllowToProfessionalData':
          instance.userAccessAdminAllowToProfessionalData,
      'lang': instance.lang,
    };
