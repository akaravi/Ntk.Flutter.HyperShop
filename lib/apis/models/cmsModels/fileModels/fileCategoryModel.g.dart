// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fileCategoryModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileCategoryModel _$FileCategoryModelFromJson(Map<String, dynamic> json) {
  return FileCategoryModel(
    virtual_Category: json['virtual_Category'] == null
        ? null
        : FileCategoryModel.fromJson(
            json['virtual_Category'] as Map<String, dynamic>),
    shareServerCategories: (json['ShareServerCategories'] as List)
        ?.map((e) => e == null
            ? null
            : FileShareServerCategoryModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shareReciverCategories: (json['ShareReciverCategories'] as List)
        ?.map((e) => e == null
            ? null
            : FileShareReciverCategoryModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    children: (json['Children'] as List)
        ?.map((e) => e == null
            ? null
            : FileCategoryModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contents: (json['Contents'] as List)
        ?.map((e) => e == null
            ? null
            : FileContentModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['Description'] as String,
    fontIcon: json['FontIcon'] as String,
    linkMainImageId: json['LinkMainImageId'] as int,
    linkParentId: json['LinkParentId'] as int,
    linkParentIdNode: json['LinkParentIdNode'] as String,
    title: json['Title'] as String,
    linkMainImageSrc: json['LinkMainImageSrc'] as String,
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

Map<String, dynamic> _$FileCategoryModelToJson(FileCategoryModel instance) =>
    <String, dynamic>{
      'virtual_Category': instance.virtual_Category,
      'ShareServerCategories': instance.shareServerCategories,
      'ShareReciverCategories': instance.shareReciverCategories,
      'Children': instance.children,
      'Contents': instance.contents,
      'Description': instance.description,
      'FontIcon': instance.fontIcon,
      'LinkMainImageId': instance.linkMainImageId,
      'LinkParentId': instance.linkParentId,
      'LinkParentIdNode': instance.linkParentIdNode,
      'Title': instance.title,
      'LinkMainImageSrc': instance.linkMainImageSrc,
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
