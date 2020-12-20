// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicationLayoutValueModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationLayoutValueModel _$ApplicationLayoutValueModelFromJson(
    Map<String, dynamic> json) {
  return ApplicationLayoutValueModel(
    linkApplicationId: json['LinkApplicationId'] as int,
    virtual_Application: json['virtual_Application'] == null
        ? null
        : ApplicationAppModel.fromJson(
            json['virtual_Application'] as Map<String, dynamic>),
    application: json['Application'] == null
        ? null
        : ApplicationAppModel.fromJson(
            json['Application'] as Map<String, dynamic>),
    linkLayoutId: json['LinkLayoutId'] as int,
    virtual_Layout: json['virtual_Layout'] == null
        ? null
        : ApplicationLayoutModel.fromJson(
            json['virtual_Layout'] as Map<String, dynamic>),
    layout: json['Layout'] == null
        ? null
        : ApplicationLayoutModel.fromJson(
            json['Layout'] as Map<String, dynamic>),
    jsonFormValues: json['JsonFormValues'] as String,
    linkSiteId: json['LinkSiteId'] as int,
    id: json['Id'] as int,
    createdDate: json['CreatedDate'] == null
        ? null
        : DateTime.parse(json['CreatedDate'] as String),
    createdBy: json['CreatedBy'] as int,
    updatedDate: json['UpdatedDate'] == null
        ? null
        : DateTime.parse(json['UpdatedDate'] as String),
    updatedBy: json['UpdatedBy'] as int,
    antiInjectionGuid: json['AntiInjectionGuid'] as String,
    antiInjectionDate: json['AntiInjectionDate'] == null
        ? null
        : DateTime.parse(json['AntiInjectionDate'] as String),
    antiInjectionRun: json['AntiInjectionRun'] as bool,
    antiInjectionExpiredMinute: json['AntiInjectionExpiredMinute'] as int,
    antiInjectionToken: json['AntiInjectionToken'] as String,
    antiInjectionExpireDate: json['AntiInjectionExpireDate'] == null
        ? null
        : DateTime.parse(json['AntiInjectionExpireDate'] as String),
  );
}

Map<String, dynamic> _$ApplicationLayoutValueModelToJson(
        ApplicationLayoutValueModel instance) =>
    <String, dynamic>{
      'LinkApplicationId': instance.linkApplicationId,
      'virtual_Application': instance.virtual_Application,
      'Application': instance.application,
      'LinkLayoutId': instance.linkLayoutId,
      'virtual_Layout': instance.virtual_Layout,
      'Layout': instance.layout,
      'JsonFormValues': instance.jsonFormValues,
      'LinkSiteId': instance.linkSiteId,
      'Id': instance.id,
      'CreatedDate': instance.createdDate?.toIso8601String(),
      'CreatedBy': instance.createdBy,
      'UpdatedDate': instance.updatedDate?.toIso8601String(),
      'UpdatedBy': instance.updatedBy,
      'AntiInjectionGuid': instance.antiInjectionGuid,
      'AntiInjectionDate': instance.antiInjectionDate?.toIso8601String(),
      'AntiInjectionRun': instance.antiInjectionRun,
      'AntiInjectionExpiredMinute': instance.antiInjectionExpiredMinute,
      'AntiInjectionToken': instance.antiInjectionToken,
      'AntiInjectionExpireDate':
          instance.antiInjectionExpireDate?.toIso8601String(),
    };
