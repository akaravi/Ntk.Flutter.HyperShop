// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicationLayoutModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationLayoutModel _$ApplicationLayoutModelFromJson(
    Map<String, dynamic> json) {
  return ApplicationLayoutModel(
    title: json['Title'] as String,
    linkMainImageId: json['LinkMainImageId'] as int,
    className: json['ClassName'] as String,
    linkSourceId: json['LinkSourceId'] as int,
    virtual_Source: json['virtual_Source'] == null
        ? null
        : ApplicationSourceModel.fromJson(
            json['virtual_Source'] as Map<String, dynamic>),
    source: json['Source'] == null
        ? null
        : ApplicationSourceModel.fromJson(
            json['Source'] as Map<String, dynamic>),
    jsonFormDefaultValue: json['JsonFormDefaultValue'] as String,
    jsonFormAdminSystemValue: json['JsonFormAdminSystemValue'] as String,
    linkModuleFilePreviewImageId: json['LinkModuleFilePreviewImageId'] as int,
    layoutValues: (json['LayoutValues'] as List)
        ?.map((e) => e == null
            ? null
            : ApplicationLayoutValueModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    linkMainImageIdSrc: json['LinkMainImageIdSrc'] as String,
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

Map<String, dynamic> _$ApplicationLayoutModelToJson(
        ApplicationLayoutModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'LinkMainImageId': instance.linkMainImageId,
      'ClassName': instance.className,
      'LinkSourceId': instance.linkSourceId,
      'virtual_Source': instance.virtual_Source,
      'Source': instance.source,
      'JsonFormDefaultValue': instance.jsonFormDefaultValue,
      'JsonFormAdminSystemValue': instance.jsonFormAdminSystemValue,
      'LinkModuleFilePreviewImageId': instance.linkModuleFilePreviewImageId,
      'LayoutValues': instance.layoutValues,
      'LinkMainImageIdSrc': instance.linkMainImageIdSrc,
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
