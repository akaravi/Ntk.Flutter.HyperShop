import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationSourceModel.dart';
import 'package:hypertools/apis/models/cmsModels/applicationModels/themeConfigLayoutModel.dart';
import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationAppModel.dart';
import 'package:hypertools/poco/enum_values.dart';

part 'applicationThemeConfigModel.g.dart';

@JsonSerializable(nullable: false)
class ApplicationThemeConfigModel extends ModelBase {
  ApplicationThemeConfigModel({this.title,this.typeId,this.linkMainImageId,this.linkSourceId,this.virtual_Source,this.source,this.themeConfigBuilderJsonValues,this.themeConfigRuntimeJsonValues,this.themeConfigLayoutJsonValues,this.themeConfigJsonValues,this.themeConfigLayouts,this.applications,this.linkMainImageIdSrc,this.linkSiteId,this.id,this.createdDate,this.createdBy,this.updatedDate,this.updatedBy,this.recordStatus,this.antiInjectionGuid,this.antiInjectionDate,this.antiInjectionRun,this.antiInjectionExpiredMinute,this.antiInjectionToken,this.antiInjectionExpireDate});

  @JsonKey(name:'Title', nullable: true)
  String title;


  @JsonKey(name:'TypeId', nullable: true)
  String typeId;


  @JsonKey(name:'LinkMainImageId', nullable: true)
  int linkMainImageId;


  @JsonKey(name:'LinkSourceId', nullable: true)
  int linkSourceId;


  @JsonKey(name:'virtual_Source', nullable: true)
  ApplicationSourceModel virtual_Source;


  @JsonKey(name:'Source', nullable: true)
  ApplicationSourceModel source;


  @JsonKey(name:'ThemeConfigBuilderJsonValues', nullable: true)
  String themeConfigBuilderJsonValues;


  @JsonKey(name:'ThemeConfigRuntimeJsonValues', nullable: true)
  String themeConfigRuntimeJsonValues;


  @JsonKey(name:'ThemeConfigLayoutJsonValues', nullable: true)
  String themeConfigLayoutJsonValues;


  @JsonKey(name:'ThemeConfigJsonValues', nullable: true)
  String themeConfigJsonValues;


  @JsonKey(name:'ThemeConfigLayouts', nullable: true)
  List<ThemeConfigLayoutModel> themeConfigLayouts;


  @JsonKey(name:'Applications', nullable: true)
  List<ApplicationAppModel> applications;


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




  static ApplicationThemeConfigModel fromJsonObject(Object value) => ApplicationThemeConfigModel.fromJson(value);

  factory ApplicationThemeConfigModel.fromJson(Map<String, dynamic> json) {
      var rt = _$ApplicationThemeConfigModelFromJson(json);
      rt.recordStatus = EnumMapper$RecordStatusEnumConverter.fromJson(json['RecordStatus']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$ApplicationThemeConfigModelToJson(this);
      rt['RecordStatus'] = EnumMapper$RecordStatusEnumConverter.toJson(recordStatus);
      return rt;
  }
}

