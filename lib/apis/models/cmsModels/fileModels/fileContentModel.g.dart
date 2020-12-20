// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fileContentModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileContentModel _$FileContentModelFromJson(Map<String, dynamic> json) {
  return FileContentModel(
    linkCategoryId: json['LinkCategoryId'] as int,
    linkModuleMemberId: json['LinkModuleMemberId'] as int,
    virtual_Category: json['virtual_Category'] == null
        ? null
        : FileCategoryModel.fromJson(
            json['virtual_Category'] as Map<String, dynamic>),
    category: json['Category'] == null
        ? null
        : FileCategoryModel.fromJson(json['Category'] as Map<String, dynamic>),
    fileName: json['FileName'] as String,
    description: json['Description'] as String,
    fileExist: json['FileExist'] as bool,
    fileExistChecked: json['FileExistChecked'] == null
        ? null
        : DateTime.parse(json['FileExistChecked'] as String),
    fileLastUseed: json['FileLastUseed'] == null
        ? null
        : DateTime.parse(json['FileLastUseed'] as String),
    fileSrc: json['FileSrc'] as String,
    extension: json['Extension'] as String,
    fileSize: (json['FileSize'] as num)?.toDouble(),
    viewCount: json['ViewCount'] as int,
    tags: json['Tags'] as String,
    searchTarget: json['SearchTarget'] as String,
    uiSearchTarget: json['UiSearchTarget'] as String,
    moduleName: json['ModuleName'] as String,
    renderOrderWidth: json['RenderOrderWidth'] as int,
    renderOrderHeight: json['RenderOrderHeight'] as int,
    downloadLinksrc: json['DownloadLinksrc'] as String,
    downloadLinksrcByDomain: json['DownloadLinksrcByDomain'] as String,
    uploadName: json['uploadName'] as String,
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

Map<String, dynamic> _$FileContentModelToJson(FileContentModel instance) =>
    <String, dynamic>{
      'LinkCategoryId': instance.linkCategoryId,
      'LinkModuleMemberId': instance.linkModuleMemberId,
      'virtual_Category': instance.virtual_Category,
      'Category': instance.category,
      'FileName': instance.fileName,
      'Description': instance.description,
      'FileExist': instance.fileExist,
      'FileExistChecked': instance.fileExistChecked?.toIso8601String(),
      'FileLastUseed': instance.fileLastUseed?.toIso8601String(),
      'FileSrc': instance.fileSrc,
      'Extension': instance.extension,
      'FileSize': instance.fileSize,
      'ViewCount': instance.viewCount,
      'Tags': instance.tags,
      'SearchTarget': instance.searchTarget,
      'UiSearchTarget': instance.uiSearchTarget,
      'ModuleName': instance.moduleName,
      'RenderOrderWidth': instance.renderOrderWidth,
      'RenderOrderHeight': instance.renderOrderHeight,
      'DownloadLinksrc': instance.downloadLinksrc,
      'DownloadLinksrcByDomain': instance.downloadLinksrcByDomain,
      'uploadName': instance.uploadName,
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
