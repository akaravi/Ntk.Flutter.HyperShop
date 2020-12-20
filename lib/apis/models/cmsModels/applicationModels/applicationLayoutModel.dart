import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationSourceModel.dart';
import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationLayoutValueModel.dart';
import 'package:hypertools/poco/enum_values.dart';

part 'applicationLayoutModel.g.dart';

@JsonSerializable(nullable: false)
class ApplicationLayoutModel extends ModelBase {
  ApplicationLayoutModel({this.title,this.linkMainImageId,this.className,this.linkSourceId,this.virtual_Source,this.source,this.jsonFormDefaultValue,this.jsonFormAdminSystemValue,this.linkModuleFilePreviewImageId,this.layoutValues,this.linkMainImageIdSrc,this.linkSiteId,this.id,this.createdDate,this.createdBy,this.updatedDate,this.updatedBy,this.recordStatus,this.antiInjectionGuid,this.antiInjectionDate,this.antiInjectionRun,this.antiInjectionExpiredMinute,this.antiInjectionToken,this.antiInjectionExpireDate});

  @JsonKey(name:'Title', nullable: true)
  String title;


  @JsonKey(name:'LinkMainImageId', nullable: true)
  int linkMainImageId;


  @JsonKey(name:'ClassName', nullable: true)
  String className;


  @JsonKey(name:'LinkSourceId', nullable: true)
  int linkSourceId;


  @JsonKey(name:'virtual_Source', nullable: true)
  ApplicationSourceModel virtual_Source;


  @JsonKey(name:'Source', nullable: true)
  ApplicationSourceModel source;


  @JsonKey(name:'JsonFormDefaultValue', nullable: true)
  String jsonFormDefaultValue;


  @JsonKey(name:'JsonFormAdminSystemValue', nullable: true)
  String jsonFormAdminSystemValue;


  @JsonKey(name:'LinkModuleFilePreviewImageId', nullable: true)
  int linkModuleFilePreviewImageId;


  @JsonKey(name:'LayoutValues', nullable: true)
  List<ApplicationLayoutValueModel> layoutValues;


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




  static ApplicationLayoutModel fromJsonObject(Object value) => ApplicationLayoutModel.fromJson(value);

  factory ApplicationLayoutModel.fromJson(Map<String, dynamic> json) {
      var rt = _$ApplicationLayoutModelFromJson(json);
      rt.recordStatus = EnumMapper$RecordStatusEnumConverter.fromJson(json['RecordStatus']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$ApplicationLayoutModelToJson(this);
      rt['RecordStatus'] = EnumMapper$RecordStatusEnumConverter.toJson(recordStatus);
      return rt;
  }
}

