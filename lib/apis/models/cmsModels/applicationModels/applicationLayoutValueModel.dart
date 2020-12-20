import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationAppModel.dart';
import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationLayoutModel.dart';
import 'package:hypertools/poco/enum_values.dart';

part 'applicationLayoutValueModel.g.dart';

@JsonSerializable(nullable: false)
class ApplicationLayoutValueModel extends ModelBase {
  ApplicationLayoutValueModel({this.linkApplicationId,this.virtual_Application,this.application,this.linkLayoutId,this.virtual_Layout,this.layout,this.jsonFormValues,this.linkSiteId,this.id,this.createdDate,this.createdBy,this.updatedDate,this.updatedBy,this.recordStatus,this.antiInjectionGuid,this.antiInjectionDate,this.antiInjectionRun,this.antiInjectionExpiredMinute,this.antiInjectionToken,this.antiInjectionExpireDate});

  @JsonKey(name:'LinkApplicationId', nullable: true)
  int linkApplicationId;


  @JsonKey(name:'virtual_Application', nullable: true)
  ApplicationAppModel virtual_Application;


  @JsonKey(name:'Application', nullable: true)
  ApplicationAppModel application;


  @JsonKey(name:'LinkLayoutId', nullable: true)
  int linkLayoutId;


  @JsonKey(name:'virtual_Layout', nullable: true)
  ApplicationLayoutModel virtual_Layout;


  @JsonKey(name:'Layout', nullable: true)
  ApplicationLayoutModel layout;


  @JsonKey(name:'JsonFormValues', nullable: true)
  String jsonFormValues;


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




  static ApplicationLayoutValueModel fromJsonObject(Object value) => ApplicationLayoutValueModel.fromJson(value);

  factory ApplicationLayoutValueModel.fromJson(Map<String, dynamic> json) {
      var rt = _$ApplicationLayoutValueModelFromJson(json);
      rt.recordStatus = EnumMapper$RecordStatusEnumConverter.fromJson(json['RecordStatus']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$ApplicationLayoutValueModelToJson(this);
      rt['RecordStatus'] = EnumMapper$RecordStatusEnumConverter.toJson(recordStatus);
      return rt;
  }
}

