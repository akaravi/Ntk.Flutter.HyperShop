// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicationSourceModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationSourceModel _$ApplicationSourceModelFromJson(
    Map<String, dynamic> json) {
  return ApplicationSourceModel(
    title: json['Title'] as String,
    linkMainImageId: json['LinkMainImageId'] as int,
    defaultAppId: json['DefaultAppId'] as int,
    modulesName: json['ModulesName'] as String,
    extension: json['Extension'] as String,
    extensionUpdateFile: json['ExtensionUpdateFile'] as String,
    className: json['ClassName'] as String,
    packageName: json['PackageName'] as String,
    checkUpdate: json['CheckUpdate'] as bool,
    forceUpdate: json['ForceUpdate'] as bool,
    linkLastSuccessfullyBuildFileId:
        json['LinkLastSuccessfullyBuildFileId'] as int,
    lastSuccessfullyBuildDate: json['LastSuccessfullyBuildDate'] == null
        ? null
        : DateTime.parse(json['LastSuccessfullyBuildDate'] as String),
    lastBuildCommandDate: json['LastBuildCommandDate'] == null
        ? null
        : DateTime.parse(json['LastBuildCommandDate'] as String),
    lastBuildCommandBy: json['LastBuildCommandBy'] == null
        ? null
        : DateTime.parse(json['LastBuildCommandBy'] as String),
    lastUnsuccessfullyBuildErrorDate:
        json['LastUnsuccessfullyBuildErrorDate'] == null
            ? null
            : DateTime.parse(
                json['LastUnsuccessfullyBuildErrorDate'] as String),
    lastUnsuccessfullyBuildErrorMessage:
        json['LastUnsuccessfullyBuildErrorMessage'] as String,
    layouts: (json['Layouts'] as List)
        ?.map((e) => e == null
            ? null
            : ApplicationLayoutModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    applications: (json['Applications'] as List)
        ?.map((e) => e == null
            ? null
            : ApplicationAppModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fireBaseWebAPIKey: json['FireBaseWebAPIKey'] as String,
    fireBaseSenderID: json['FireBaseSenderID'] as String,
    fireBaseServerKey: json['FireBaseServerKey'] as String,
    defaultConfigBuilderAdminJsonValues:
        json['DefaultConfigBuilderAdminJsonValues'] as String,
    defaultConfigRuntimeAdminJsonValues:
        json['DefaultConfigRuntimeAdminJsonValues'] as String,
    defaultConfigBuilderSiteJsonValues:
        json['DefaultConfigBuilderSiteJsonValues'] as String,
    defaultConfigRuntimeSiteJsonValues:
        json['DefaultConfigRuntimeSiteJsonValues'] as String,
    buildKey1String: json['BuildKey1String'] as String,
    buildKey1Value: json['BuildKey1Value'] as String,
    buildKey2String: json['BuildKey2String'] as String,
    buildKey2Value: json['BuildKey2Value'] as String,
    buildKey3String: json['BuildKey3String'] as String,
    buildKey3Value: json['BuildKey3Value'] as String,
    buildKey4String: json['BuildKey4String'] as String,
    buildKey4Value: json['BuildKey4Value'] as String,
    buildKey5String: json['BuildKey5String'] as String,
    buildKey5Value: json['BuildKey5Value'] as String,
    isPublish: json['IsPublish'] as bool,
    isAbilityGradleBuild: json['IsAbilityGradleBuild'] as bool,
    sourceNameGit: json['SourceNameGit'] as String,
    updateSourceByGit: json['UpdateSourceByGit'] as bool,
    filePathOnServer: json['FilePathOnServer'] as String,
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

Map<String, dynamic> _$ApplicationSourceModelToJson(
        ApplicationSourceModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'LinkMainImageId': instance.linkMainImageId,
      'DefaultAppId': instance.defaultAppId,
      'ModulesName': instance.modulesName,
      'Extension': instance.extension,
      'ExtensionUpdateFile': instance.extensionUpdateFile,
      'ClassName': instance.className,
      'PackageName': instance.packageName,
      'CheckUpdate': instance.checkUpdate,
      'ForceUpdate': instance.forceUpdate,
      'LinkLastSuccessfullyBuildFileId':
          instance.linkLastSuccessfullyBuildFileId,
      'LastSuccessfullyBuildDate':
          instance.lastSuccessfullyBuildDate?.toIso8601String(),
      'LastBuildCommandDate': instance.lastBuildCommandDate?.toIso8601String(),
      'LastBuildCommandBy': instance.lastBuildCommandBy?.toIso8601String(),
      'LastUnsuccessfullyBuildErrorDate':
          instance.lastUnsuccessfullyBuildErrorDate?.toIso8601String(),
      'LastUnsuccessfullyBuildErrorMessage':
          instance.lastUnsuccessfullyBuildErrorMessage,
      'Layouts': instance.layouts,
      'Applications': instance.applications,
      'FireBaseWebAPIKey': instance.fireBaseWebAPIKey,
      'FireBaseSenderID': instance.fireBaseSenderID,
      'FireBaseServerKey': instance.fireBaseServerKey,
      'DefaultConfigBuilderAdminJsonValues':
          instance.defaultConfigBuilderAdminJsonValues,
      'DefaultConfigRuntimeAdminJsonValues':
          instance.defaultConfigRuntimeAdminJsonValues,
      'DefaultConfigBuilderSiteJsonValues':
          instance.defaultConfigBuilderSiteJsonValues,
      'DefaultConfigRuntimeSiteJsonValues':
          instance.defaultConfigRuntimeSiteJsonValues,
      'BuildKey1String': instance.buildKey1String,
      'BuildKey1Value': instance.buildKey1Value,
      'BuildKey2String': instance.buildKey2String,
      'BuildKey2Value': instance.buildKey2Value,
      'BuildKey3String': instance.buildKey3String,
      'BuildKey3Value': instance.buildKey3Value,
      'BuildKey4String': instance.buildKey4String,
      'BuildKey4Value': instance.buildKey4Value,
      'BuildKey5String': instance.buildKey5String,
      'BuildKey5Value': instance.buildKey5Value,
      'IsPublish': instance.isPublish,
      'IsAbilityGradleBuild': instance.isAbilityGradleBuild,
      'SourceNameGit': instance.sourceNameGit,
      'UpdateSourceByGit': instance.updateSourceByGit,
      'FilePathOnServer': instance.filePathOnServer,
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
