// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicationThemeConfigModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationThemeConfigModel _$ApplicationThemeConfigModelFromJson(
    Map<String, dynamic> json) {
  return ApplicationThemeConfigModel(
    title: json['Title'] as String,
    typeId: json['TypeId'] as String,
    linkMainImageId: json['LinkMainImageId'] as int,
    linkSourceId: json['LinkSourceId'] as int,
    virtual_Source: json['virtual_Source'] == null
        ? null
        : ApplicationSourceModel.fromJson(
            json['virtual_Source'] as Map<String, dynamic>),
    source: json['Source'] == null
        ? null
        : ApplicationSourceModel.fromJson(
            json['Source'] as Map<String, dynamic>),
    themeConfigBuilderJsonValues:
        json['ThemeConfigBuilderJsonValues'] as String,
    themeConfigRuntimeJsonValues:
        json['ThemeConfigRuntimeJsonValues'] as String,
    themeConfigLayoutJsonValues: json['ThemeConfigLayoutJsonValues'] as String,
    themeConfigJsonValues: json['ThemeConfigJsonValues'] as String,
    themeConfigLayouts: (json['ThemeConfigLayouts'] as List)
        ?.map((e) => e == null
            ? null
            : ThemeConfigLayoutModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    applications: (json['Applications'] as List)
        ?.map((e) => e == null
            ? null
            : ApplicationAppModel.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ApplicationThemeConfigModelToJson(
        ApplicationThemeConfigModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'TypeId': instance.typeId,
      'LinkMainImageId': instance.linkMainImageId,
      'LinkSourceId': instance.linkSourceId,
      'virtual_Source': instance.virtual_Source,
      'Source': instance.source,
      'ThemeConfigBuilderJsonValues': instance.themeConfigBuilderJsonValues,
      'ThemeConfigRuntimeJsonValues': instance.themeConfigRuntimeJsonValues,
      'ThemeConfigLayoutJsonValues': instance.themeConfigLayoutJsonValues,
      'ThemeConfigJsonValues': instance.themeConfigJsonValues,
      'ThemeConfigLayouts': instance.themeConfigLayouts,
      'Applications': instance.applications,
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
