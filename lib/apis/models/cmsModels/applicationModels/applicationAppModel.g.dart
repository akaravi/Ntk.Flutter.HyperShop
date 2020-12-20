// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicationAppModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationAppModel _$ApplicationAppModelFromJson(Map<String, dynamic> json) {
  return ApplicationAppModel(
    appKey: json['AppKey'] as String,
    expireDate: json['ExpireDate'] == null
        ? null
        : DateTime.parse(json['ExpireDate'] as String),
    linkFileIdIcon: json['LinkFileIdIcon'] as int,
    icon: json['Icon'] == null
        ? null
        : FileContentModel.fromJson(json['Icon'] as Map<String, dynamic>),
    linkFileIdLogo: json['LinkFileIdLogo'] as int,
    logo: json['Logo'] == null
        ? null
        : FileContentModel.fromJson(json['Logo'] as Map<String, dynamic>),
    linkFileIdSplashScreen: json['LinkFileIdSplashScreen'] as int,
    splashScreen: json['SplashScreen'] == null
        ? null
        : FileContentModel.fromJson(
            json['SplashScreen'] as Map<String, dynamic>),
    title: json['Title'] as String,
    appVersion: json['AppVersion'] as int,
    isPublished: json['IsPublished'] as bool,
    linkSourceId: json['LinkSourceId'] as int,
    virtual_Source: json['virtual_Source'] == null
        ? null
        : ApplicationSourceModel.fromJson(
            json['virtual_Source'] as Map<String, dynamic>),
    source: json['Source'] == null
        ? null
        : ApplicationSourceModel.fromJson(
            json['Source'] as Map<String, dynamic>),
    downloadCount: json['DownloadCount'] as int,
    isGlobalUser: json['IsGlobalUser'] as bool,
    checkUpdate: json['CheckUpdate'] as bool,
    forceUpdate: json['ForceUpdate'] as bool,
    qrCode: json['QrCode'] as String,
    lastBuildAppKey: json['LastBuildAppKey'] as String,
    lastNotificationOrderDate: json['LastNotificationOrderDate'] == null
        ? null
        : DateTime.parse(json['LastNotificationOrderDate'] as String),
    lastBuildOrderDate: json['LastBuildOrderDate'] == null
        ? null
        : DateTime.parse(json['LastBuildOrderDate'] as String),
    lastBuildRunDate: json['LastBuildRunDate'] == null
        ? null
        : DateTime.parse(json['LastBuildRunDate'] as String),
    lastBuildEndDate: json['LastBuildEndDate'] == null
        ? null
        : DateTime.parse(json['LastBuildEndDate'] as String),
    lastBuildErrorMessage: json['LastBuildErrorMessage'] as String,
    lastSuccessfullyBuildDate: json['LastSuccessfullyBuildDate'] == null
        ? null
        : DateTime.parse(json['LastSuccessfullyBuildDate'] as String),
    layoutValues: (json['LayoutValues'] as List)
        ?.map((e) => e == null
            ? null
            : ApplicationLayoutValueModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    buildCount: json['BuildCount'] as int,
    linkThemeConfigId: json['LinkThemeConfigId'] as int,
    virtual_ThemeConfig: json['virtual_ThemeConfig'] == null
        ? null
        : ApplicationThemeConfigModel.fromJson(
            json['virtual_ThemeConfig'] as Map<String, dynamic>),
    themeConfig: json['ThemeConfig'] == null
        ? null
        : ApplicationThemeConfigModel.fromJson(
            json['ThemeConfig'] as Map<String, dynamic>),
    configBuilderAdminJsonValues:
        json['ConfigBuilderAdminJsonValues'] as String,
    configRuntimeAdminJsonValues:
        json['ConfigRuntimeAdminJsonValues'] as String,
    configBuilderSiteJsonValues: json['ConfigBuilderSiteJsonValues'] as String,
    configRuntimeSiteJsonValues: json['ConfigRuntimeSiteJsonValues'] as String,
    scoreClick: json['ScoreClick'] as int,
    scoreSumPercent: json['ScoreSumPercent'] as int,
    adminConfigFormFormatter: (json['AdminConfigFormFormatter'] as List)
        ?.map((e) => e == null
            ? null
            : GetPropertiesInfoModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    userConfigFormFormatter: (json['UserConfigFormFormatter'] as List)
        ?.map((e) => e == null
            ? null
            : GetPropertiesInfoModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    themeConfigJsonValues: json['ThemeConfigJsonValues'] as String,
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
    downloadLinkSrcCustomize: json['DownloadLinkSrcCustomize'] as String,
    downloadLinksrc: json['DownloadLinksrc'] as String,
    downloadLinkUpdateSrc: json['DownloadLinkUpdateSrc'] as String,
    downloadLinksrcByDomain: json['DownloadLinksrcByDomain'] as String,
    downloadLinkUpdateSrcByDomain:
        json['DownloadLinkUpdateSrcByDomain'] as String,
    filePathOnServer: json['FilePathOnServer'] as String,
    linkFileIdIconSrc: json['LinkFileIdIconSrc'] as String,
    linkFileIdLogoSrc: json['LinkFileIdLogoSrc'] as String,
    linkFileIdSplashScreenSrc: json['LinkFileIdSplashScreenSrc'] as String,
    downloadLinkSrcByDomainQRCodeBase64:
        json['DownloadLinkSrcByDomainQRCodeBase64'] as String,
    aboutUsTitle: json['AboutUsTitle'] as String,
    aboutUsDescription: json['AboutUsDescription'] as String,
    aboutUsTel: json['AboutUsTel'] as String,
    aboutUsFax: json['AboutUsFax'] as String,
    aboutUsEmail: json['AboutUsEmail'] as String,
    aboutUsAddress: json['AboutUsAddress'] as String,
    aboutUsLinkImageId: json['AboutUsLinkImageId'] as String,
    aboutUsLinkImageIdSrc: json['AboutUsLinkImageIdSrc'] as String,
    aboutUsGeolocationlatitude:
        (json['AboutUsGeolocationlatitude'] as num)?.toDouble(),
    aboutUsGeolocationlongitude:
        (json['AboutUsGeolocationlongitude'] as num)?.toDouble(),
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

Map<String, dynamic> _$ApplicationAppModelToJson(
        ApplicationAppModel instance) =>
    <String, dynamic>{
      'AppKey': instance.appKey,
      'ExpireDate': instance.expireDate?.toIso8601String(),
      'LinkFileIdIcon': instance.linkFileIdIcon,
      'Icon': instance.icon,
      'LinkFileIdLogo': instance.linkFileIdLogo,
      'Logo': instance.logo,
      'LinkFileIdSplashScreen': instance.linkFileIdSplashScreen,
      'SplashScreen': instance.splashScreen,
      'Title': instance.title,
      'AppVersion': instance.appVersion,
      'IsPublished': instance.isPublished,
      'LinkSourceId': instance.linkSourceId,
      'virtual_Source': instance.virtual_Source,
      'Source': instance.source,
      'DownloadCount': instance.downloadCount,
      'IsGlobalUser': instance.isGlobalUser,
      'CheckUpdate': instance.checkUpdate,
      'ForceUpdate': instance.forceUpdate,
      'QrCode': instance.qrCode,
      'LastBuildAppKey': instance.lastBuildAppKey,
      'LastNotificationOrderDate':
          instance.lastNotificationOrderDate?.toIso8601String(),
      'LastBuildOrderDate': instance.lastBuildOrderDate?.toIso8601String(),
      'LastBuildRunDate': instance.lastBuildRunDate?.toIso8601String(),
      'LastBuildEndDate': instance.lastBuildEndDate?.toIso8601String(),
      'LastBuildErrorMessage': instance.lastBuildErrorMessage,
      'LastSuccessfullyBuildDate':
          instance.lastSuccessfullyBuildDate?.toIso8601String(),
      'LayoutValues': instance.layoutValues,
      'BuildCount': instance.buildCount,
      'LinkThemeConfigId': instance.linkThemeConfigId,
      'virtual_ThemeConfig': instance.virtual_ThemeConfig,
      'ThemeConfig': instance.themeConfig,
      'ConfigBuilderAdminJsonValues': instance.configBuilderAdminJsonValues,
      'ConfigRuntimeAdminJsonValues': instance.configRuntimeAdminJsonValues,
      'ConfigBuilderSiteJsonValues': instance.configBuilderSiteJsonValues,
      'ConfigRuntimeSiteJsonValues': instance.configRuntimeSiteJsonValues,
      'ScoreClick': instance.scoreClick,
      'ScoreSumPercent': instance.scoreSumPercent,
      'AdminConfigFormFormatter': instance.adminConfigFormFormatter,
      'UserConfigFormFormatter': instance.userConfigFormFormatter,
      'ThemeConfigJsonValues': instance.themeConfigJsonValues,
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
      'DownloadLinkSrcCustomize': instance.downloadLinkSrcCustomize,
      'DownloadLinksrc': instance.downloadLinksrc,
      'DownloadLinkUpdateSrc': instance.downloadLinkUpdateSrc,
      'DownloadLinksrcByDomain': instance.downloadLinksrcByDomain,
      'DownloadLinkUpdateSrcByDomain': instance.downloadLinkUpdateSrcByDomain,
      'FilePathOnServer': instance.filePathOnServer,
      'LinkFileIdIconSrc': instance.linkFileIdIconSrc,
      'LinkFileIdLogoSrc': instance.linkFileIdLogoSrc,
      'LinkFileIdSplashScreenSrc': instance.linkFileIdSplashScreenSrc,
      'DownloadLinkSrcByDomainQRCodeBase64':
          instance.downloadLinkSrcByDomainQRCodeBase64,
      'AboutUsTitle': instance.aboutUsTitle,
      'AboutUsDescription': instance.aboutUsDescription,
      'AboutUsTel': instance.aboutUsTel,
      'AboutUsFax': instance.aboutUsFax,
      'AboutUsEmail': instance.aboutUsEmail,
      'AboutUsAddress': instance.aboutUsAddress,
      'AboutUsLinkImageId': instance.aboutUsLinkImageId,
      'AboutUsLinkImageIdSrc': instance.aboutUsLinkImageIdSrc,
      'AboutUsGeolocationlatitude': instance.aboutUsGeolocationlatitude,
      'AboutUsGeolocationlongitude': instance.aboutUsGeolocationlongitude,
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
