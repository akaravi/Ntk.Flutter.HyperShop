import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationLayoutModel.dart';
import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationAppModel.dart';
import 'package:hypertools/poco/enum_values.dart';

part 'applicationSourceModel.g.dart';

@JsonSerializable(nullable: false)
class ApplicationSourceModel extends ModelBase {
  ApplicationSourceModel({this.title,this.linkMainImageId,this.defaultAppId,this.modulesName,this.extension,this.extensionUpdateFile,this.oSType,this.className,this.packageName,this.checkUpdate,this.forceUpdate,this.linkLastSuccessfullyBuildFileId,this.lastSuccessfullyBuildDate,this.lastBuildCommandDate,this.lastBuildCommandBy,this.lastUnsuccessfullyBuildErrorDate,this.lastUnsuccessfullyBuildErrorMessage,this.layouts,this.applications,this.fireBaseWebAPIKey,this.fireBaseSenderID,this.fireBaseServerKey,this.defaultConfigBuilderAdminJsonValues,this.defaultConfigRuntimeAdminJsonValues,this.defaultConfigBuilderSiteJsonValues,this.defaultConfigRuntimeSiteJsonValues,this.buildKey1String,this.buildKey1Value,this.buildKey2String,this.buildKey2Value,this.buildKey3String,this.buildKey3Value,this.buildKey4String,this.buildKey4Value,this.buildKey5String,this.buildKey5Value,this.isPublish,this.isAbilityGradleBuild,this.sourceNameGit,this.updateSourceByGit,this.filePathOnServer,this.linkMainImageIdSrc,this.linkSiteId,this.id,this.createdDate,this.createdBy,this.updatedDate,this.updatedBy,this.recordStatus,this.antiInjectionGuid,this.antiInjectionDate,this.antiInjectionRun,this.antiInjectionExpiredMinute,this.antiInjectionToken,this.antiInjectionExpireDate});

  @JsonKey(name:'Title', nullable: true)
  String title;


  @JsonKey(name:'LinkMainImageId', nullable: true)
  int linkMainImageId;


  @JsonKey(name:'DefaultAppId', nullable: true)
  int defaultAppId;


  @JsonKey(name:'ModulesName', nullable: true)
  String modulesName;


  @JsonKey(name:'Extension', nullable: true)
  String extension;


  @JsonKey(name:'ExtensionUpdateFile', nullable: true)
  String extensionUpdateFile;


  @JsonKey(ignore: true)
  EnumOperatingSystemType oSType;


  @JsonKey(name:'ClassName', nullable: true)
  String className;


  @JsonKey(name:'PackageName', nullable: true)
  String packageName;


  @JsonKey(name:'CheckUpdate', nullable: true)
  bool checkUpdate;


  @JsonKey(name:'ForceUpdate', nullable: true)
  bool forceUpdate;


  @JsonKey(name:'LinkLastSuccessfullyBuildFileId', nullable: true)
  int linkLastSuccessfullyBuildFileId;


  @JsonKey(name:'LastSuccessfullyBuildDate', nullable: true)
  DateTime lastSuccessfullyBuildDate;


  @JsonKey(name:'LastBuildCommandDate', nullable: true)
  DateTime lastBuildCommandDate;


  @JsonKey(name:'LastBuildCommandBy', nullable: true)
  DateTime lastBuildCommandBy;


  @JsonKey(name:'LastUnsuccessfullyBuildErrorDate', nullable: true)
  DateTime lastUnsuccessfullyBuildErrorDate;


  @JsonKey(name:'LastUnsuccessfullyBuildErrorMessage', nullable: true)
  String lastUnsuccessfullyBuildErrorMessage;


  @JsonKey(name:'Layouts', nullable: true)
  List<ApplicationLayoutModel> layouts;


  @JsonKey(name:'Applications', nullable: true)
  List<ApplicationAppModel> applications;


  @JsonKey(name:'FireBaseWebAPIKey', nullable: true)
  String fireBaseWebAPIKey;


  @JsonKey(name:'FireBaseSenderID', nullable: true)
  String fireBaseSenderID;


  @JsonKey(name:'FireBaseServerKey', nullable: true)
  String fireBaseServerKey;


  @JsonKey(name:'DefaultConfigBuilderAdminJsonValues', nullable: true)
  String defaultConfigBuilderAdminJsonValues;


  @JsonKey(name:'DefaultConfigRuntimeAdminJsonValues', nullable: true)
  String defaultConfigRuntimeAdminJsonValues;


  @JsonKey(name:'DefaultConfigBuilderSiteJsonValues', nullable: true)
  String defaultConfigBuilderSiteJsonValues;


  @JsonKey(name:'DefaultConfigRuntimeSiteJsonValues', nullable: true)
  String defaultConfigRuntimeSiteJsonValues;


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


  @JsonKey(name:'IsPublish', nullable: true)
  bool isPublish;


  @JsonKey(name:'IsAbilityGradleBuild', nullable: true)
  bool isAbilityGradleBuild;


  @JsonKey(name:'SourceNameGit', nullable: true)
  String sourceNameGit;


  @JsonKey(name:'UpdateSourceByGit', nullable: true)
  bool updateSourceByGit;


  @JsonKey(name:'FilePathOnServer', nullable: true)
  String filePathOnServer;


  @JsonKey(name:'LinkMainImageIdSrc', nullable: true)
  String linkMainImageIdSrc;


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




  static ApplicationSourceModel fromJsonObject(Object value) => ApplicationSourceModel.fromJson(value);

  factory ApplicationSourceModel.fromJson(Map<String, dynamic> json) {
      var rt = _$ApplicationSourceModelFromJson(json);
      rt.oSType = EnumMapper$EnumOperatingSystemTypeConverter.fromJson(json['OSType']);
      rt.recordStatus = EnumMapper$RecordStatusEnumConverter.fromJson(json['RecordStatus']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$ApplicationSourceModelToJson(this);
      rt['OSType'] = EnumMapper$EnumOperatingSystemTypeConverter.toJson(oSType);
      rt['RecordStatus'] = EnumMapper$RecordStatusEnumConverter.toJson(recordStatus);
      return rt;
  }
}

