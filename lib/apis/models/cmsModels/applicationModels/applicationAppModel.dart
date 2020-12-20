import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/cmsModels/fileModels/fileContentModel.dart';
import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationSourceModel.dart';
import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationLayoutValueModel.dart';
import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationThemeConfigModel.dart';
import 'package:hypertools/apis/models/cmsModels/modelBase/getPropertiesInfoModel.dart';
import 'package:hypertools/poco/enum_values.dart';

part 'applicationAppModel.g.dart';

@JsonSerializable(nullable: false)
class ApplicationAppModel extends ModelBase {
  ApplicationAppModel({this.appKey,this.expireDate,this.linkFileIdIcon,this.icon,this.linkFileIdLogo,this.logo,this.linkFileIdSplashScreen,this.splashScreen,this.title,this.appVersion,this.isPublished,this.linkSourceId,this.virtual_Source,this.source,this.downloadCount,this.isGlobalUser,this.checkUpdate,this.forceUpdate,this.qrCode,this.lastBuildAppKey,this.lastBuildStatus,this.lastNotificationOrderDate,this.lastBuildOrderDate,this.lastBuildRunDate,this.lastBuildEndDate,this.lastBuildErrorMessage,this.lastSuccessfullyBuildDate,this.layoutValues,this.buildCount,this.linkThemeConfigId,this.virtual_ThemeConfig,this.themeConfig,this.configBuilderAdminJsonValues,this.configRuntimeAdminJsonValues,this.configBuilderSiteJsonValues,this.configRuntimeSiteJsonValues,this.scoreClick,this.scoreSumPercent,this.adminConfigFormFormatter,this.userConfigFormFormatter,this.themeConfigJsonValues,this.buildKey1String,this.buildKey1Value,this.buildKey2String,this.buildKey2Value,this.buildKey3String,this.buildKey3Value,this.buildKey4String,this.buildKey4Value,this.buildKey5String,this.buildKey5Value,this.downloadLinkSrcCustomize,this.downloadLinksrc,this.downloadLinkUpdateSrc,this.downloadLinksrcByDomain,this.downloadLinkUpdateSrcByDomain,this.filePathOnServer,this.linkFileIdIconSrc,this.linkFileIdLogoSrc,this.linkFileIdSplashScreenSrc,this.downloadLinkSrcByDomainQRCodeBase64,this.aboutUsTitle,this.aboutUsDescription,this.aboutUsTel,this.aboutUsFax,this.aboutUsEmail,this.aboutUsAddress,this.aboutUsLinkImageId,this.aboutUsLinkImageIdSrc,this.aboutUsGeolocationlatitude,this.aboutUsGeolocationlongitude,this.linkSiteId,this.id,this.createdDate,this.createdBy,this.updatedDate,this.updatedBy,this.recordStatus,this.antiInjectionGuid,this.antiInjectionDate,this.antiInjectionRun,this.antiInjectionExpiredMinute,this.antiInjectionToken,this.antiInjectionExpireDate});

  @JsonKey(name:'AppKey', nullable: true)
  String appKey;


  @JsonKey(name:'ExpireDate', nullable: true)
  DateTime expireDate;


  @JsonKey(name:'LinkFileIdIcon', nullable: true)
  int linkFileIdIcon;


  @JsonKey(name:'Icon', nullable: true)
  FileContentModel icon;


  @JsonKey(name:'LinkFileIdLogo', nullable: true)
  int linkFileIdLogo;


  @JsonKey(name:'Logo', nullable: true)
  FileContentModel logo;


  @JsonKey(name:'LinkFileIdSplashScreen', nullable: true)
  int linkFileIdSplashScreen;


  @JsonKey(name:'SplashScreen', nullable: true)
  FileContentModel splashScreen;


  @JsonKey(name:'Title', nullable: true)
  String title;


  @JsonKey(name:'AppVersion', nullable: true)
  int appVersion;


  @JsonKey(name:'IsPublished', nullable: true)
  bool isPublished;


  @JsonKey(name:'LinkSourceId', nullable: true)
  int linkSourceId;


  @JsonKey(name:'virtual_Source', nullable: true)
  ApplicationSourceModel virtual_Source;


  @JsonKey(name:'Source', nullable: true)
  ApplicationSourceModel source;


  @JsonKey(name:'DownloadCount', nullable: true)
  int downloadCount;


  @JsonKey(name:'IsGlobalUser', nullable: true)
  bool isGlobalUser;


  @JsonKey(name:'CheckUpdate', nullable: true)
  bool checkUpdate;


  @JsonKey(name:'ForceUpdate', nullable: true)
  bool forceUpdate;


  @JsonKey(name:'QrCode', nullable: true)
  String qrCode;


  @JsonKey(name:'LastBuildAppKey', nullable: true)
  String lastBuildAppKey;


  @JsonKey(ignore: true)
  EnumBuildStatusType lastBuildStatus;


  @JsonKey(name:'LastNotificationOrderDate', nullable: true)
  DateTime lastNotificationOrderDate;


  @JsonKey(name:'LastBuildOrderDate', nullable: true)
  DateTime lastBuildOrderDate;


  @JsonKey(name:'LastBuildRunDate', nullable: true)
  DateTime lastBuildRunDate;


  @JsonKey(name:'LastBuildEndDate', nullable: true)
  DateTime lastBuildEndDate;


  @JsonKey(name:'LastBuildErrorMessage', nullable: true)
  String lastBuildErrorMessage;


  @JsonKey(name:'LastSuccessfullyBuildDate', nullable: true)
  DateTime lastSuccessfullyBuildDate;


  @JsonKey(name:'LayoutValues', nullable: true)
  List<ApplicationLayoutValueModel> layoutValues;


  @JsonKey(name:'BuildCount', nullable: true)
  int buildCount;


  @JsonKey(name:'LinkThemeConfigId', nullable: true)
  int linkThemeConfigId;


  @JsonKey(name:'virtual_ThemeConfig', nullable: true)
  ApplicationThemeConfigModel virtual_ThemeConfig;


  @JsonKey(name:'ThemeConfig', nullable: true)
  ApplicationThemeConfigModel themeConfig;


  @JsonKey(name:'ConfigBuilderAdminJsonValues', nullable: true)
  String configBuilderAdminJsonValues;


  @JsonKey(name:'ConfigRuntimeAdminJsonValues', nullable: true)
  String configRuntimeAdminJsonValues;


  @JsonKey(name:'ConfigBuilderSiteJsonValues', nullable: true)
  String configBuilderSiteJsonValues;


  @JsonKey(name:'ConfigRuntimeSiteJsonValues', nullable: true)
  String configRuntimeSiteJsonValues;


  @JsonKey(name:'ScoreClick', nullable: true)
  int scoreClick;


  @JsonKey(name:'ScoreSumPercent', nullable: true)
  int scoreSumPercent;


  @JsonKey(name:'AdminConfigFormFormatter', nullable: true)
  List<GetPropertiesInfoModel> adminConfigFormFormatter;


  @JsonKey(name:'UserConfigFormFormatter', nullable: true)
  List<GetPropertiesInfoModel> userConfigFormFormatter;


  @JsonKey(name:'ThemeConfigJsonValues', nullable: true)
  String themeConfigJsonValues;


  @JsonKey(name:'BuildKey1String', nullable: true)
  String buildKey1String;


  @JsonKey(name:'BuildKey1Value', nullable: true)
  String buildKey1Value;


  @JsonKey(name:'BuildKey2String', nullable: true)
  String buildKey2String;


  @JsonKey(name:'BuildKey2Value', nullable: true)
  String buildKey2Value;


  @JsonKey(name:'BuildKey3String', nullable: true)
  String buildKey3String;


  @JsonKey(name:'BuildKey3Value', nullable: true)
  String buildKey3Value;


  @JsonKey(name:'BuildKey4String', nullable: true)
  String buildKey4String;


  @JsonKey(name:'BuildKey4Value', nullable: true)
  String buildKey4Value;


  @JsonKey(name:'BuildKey5String', nullable: true)
  String buildKey5String;


  @JsonKey(name:'BuildKey5Value', nullable: true)
  String buildKey5Value;


  @JsonKey(name:'DownloadLinkSrcCustomize', nullable: true)
  String downloadLinkSrcCustomize;


  @JsonKey(name:'DownloadLinksrc', nullable: true)
  String downloadLinksrc;


  @JsonKey(name:'DownloadLinkUpdateSrc', nullable: true)
  String downloadLinkUpdateSrc;


  @JsonKey(name:'DownloadLinksrcByDomain', nullable: true)
  String downloadLinksrcByDomain;


  @JsonKey(name:'DownloadLinkUpdateSrcByDomain', nullable: true)
  String downloadLinkUpdateSrcByDomain;


  @JsonKey(name:'FilePathOnServer', nullable: true)
  String filePathOnServer;


  @JsonKey(name:'LinkFileIdIconSrc', nullable: true)
  String linkFileIdIconSrc;


  @JsonKey(name:'LinkFileIdLogoSrc', nullable: true)
  String linkFileIdLogoSrc;


  @JsonKey(name:'LinkFileIdSplashScreenSrc', nullable: true)
  String linkFileIdSplashScreenSrc;


  @JsonKey(name:'DownloadLinkSrcByDomainQRCodeBase64', nullable: true)
  String downloadLinkSrcByDomainQRCodeBase64;


  @JsonKey(name:'AboutUsTitle', nullable: true)
  String aboutUsTitle;


  @JsonKey(name:'AboutUsDescription', nullable: true)
  String aboutUsDescription;


  @JsonKey(name:'AboutUsTel', nullable: true)
  String aboutUsTel;


  @JsonKey(name:'AboutUsFax', nullable: true)
  String aboutUsFax;


  @JsonKey(name:'AboutUsEmail', nullable: true)
  String aboutUsEmail;


  @JsonKey(name:'AboutUsAddress', nullable: true)
  String aboutUsAddress;


  @JsonKey(name:'AboutUsLinkImageId', nullable: true)
  String aboutUsLinkImageId;


  @JsonKey(name:'AboutUsLinkImageIdSrc', nullable: true)
  String aboutUsLinkImageIdSrc;


  @JsonKey(name:'AboutUsGeolocationlatitude', nullable: true)
  double aboutUsGeolocationlatitude;


  @JsonKey(name:'AboutUsGeolocationlongitude', nullable: true)
  double aboutUsGeolocationlongitude;


  @JsonKey(name:'LinkSiteId', nullable: true)
  int linkSiteId;


  @JsonKey(name:'Id', nullable: true)
  int id;


  @JsonKey(name:'CreatedDate', nullable: true)
  DateTime createdDate;


  @JsonKey(name:'CreatedBy', nullable: true)
  int createdBy;


  @JsonKey(name:'UpdatedDate', nullable: true)
  DateTime updatedDate;


  @JsonKey(name:'UpdatedBy', nullable: true)
  int updatedBy;


  @JsonKey(ignore: true)
  RecordStatusEnum recordStatus;


  @JsonKey(name:'AntiInjectionGuid', nullable: true)
  String antiInjectionGuid;


  @JsonKey(name:'AntiInjectionDate', nullable: true)
  DateTime antiInjectionDate;


  @JsonKey(name:'AntiInjectionRun', nullable: true)
  bool antiInjectionRun;


  @JsonKey(name:'AntiInjectionExpiredMinute', nullable: true)
  int antiInjectionExpiredMinute;


  @JsonKey(name:'AntiInjectionToken', nullable: true)
  String antiInjectionToken;


  @JsonKey(name:'AntiInjectionExpireDate', nullable: true)
  DateTime antiInjectionExpireDate;




  static ApplicationAppModel fromJsonObject(Object value) => ApplicationAppModel.fromJson(value);

  factory ApplicationAppModel.fromJson(Map<String, dynamic> json) {
      var rt = _$ApplicationAppModelFromJson(json);
      rt.lastBuildStatus = EnumMapper$EnumBuildStatusTypeConverter.fromJson(json['LastBuildStatus']);
      rt.recordStatus = EnumMapper$RecordStatusEnumConverter.fromJson(json['RecordStatus']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$ApplicationAppModelToJson(this);
      rt['LastBuildStatus'] = EnumMapper$EnumBuildStatusTypeConverter.toJson(lastBuildStatus);
      rt['RecordStatus'] = EnumMapper$RecordStatusEnumConverter.toJson(recordStatus);
      return rt;
  }
}

