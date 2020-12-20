import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/cmsModels/fileModels/fileCategoryModel.dart';
import 'package:hypertools/apis/models/cmsModels/fileModels/fileShareServerCategoryModel.dart';
import 'package:hypertools/apis/models/cmsModels/fileModels/fileShareReciverCategoryModel.dart';
import 'package:hypertools/apis/models/cmsModels/fileModels/fileContentModel.dart';
import 'package:hypertools/poco/enum_values.dart';

part 'fileCategoryModel.g.dart';

@JsonSerializable(nullable: false)
class FileCategoryModel extends ModelBase {
  FileCategoryModel({this.virtual_Category,this.shareServerCategories,this.shareReciverCategories,this.children,this.contents,this.description,this.fontIcon,this.linkMainImageId,this.linkParentId,this.linkParentIdNode,this.title,this.linkMainImageSrc,this.linkSiteId,this.id,this.createdDate,this.createdBy,this.updatedDate,this.updatedBy,this.recordStatus,this.antiInjectionGuid,this.antiInjectionDate,this.antiInjectionRun,this.antiInjectionExpiredMinute,this.antiInjectionToken,this.antiInjectionExpireDate});

  @JsonKey(name:'virtual_Category', nullable: true)
  FileCategoryModel virtual_Category;


  @JsonKey(name:'ShareServerCategories', nullable: true)
  List<FileShareServerCategoryModel> shareServerCategories;


  @JsonKey(name:'ShareReciverCategories', nullable: true)
  List<FileShareReciverCategoryModel> shareReciverCategories;


  @JsonKey(name:'Children', nullable: true)
  List<FileCategoryModel> children;


  @JsonKey(name:'Contents', nullable: true)
  List<FileContentModel> contents;


  @JsonKey(name:'Description', nullable: true)
  String description;


  @JsonKey(name:'FontIcon', nullable: true)
  String fontIcon;


  @JsonKey(name:'LinkMainImageId', nullable: true)
  int linkMainImageId;


  @JsonKey(name:'LinkParentId', nullable: true)
  int linkParentId;


  @JsonKey(name:'LinkParentIdNode', nullable: true)
  String linkParentIdNode;


  @JsonKey(name:'Title', nullable: true)
  String title;


  @JsonKey(name:'LinkMainImageSrc', nullable: true)
  String linkMainImageSrc;


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




  static FileCategoryModel fromJsonObject(Object value) => FileCategoryModel.fromJson(value);

  factory FileCategoryModel.fromJson(Map<String, dynamic> json) {
      var rt = _$FileCategoryModelFromJson(json);
      rt.recordStatus = EnumMapper$RecordStatusEnumConverter.fromJson(json['RecordStatus']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$FileCategoryModelToJson(this);
      rt['RecordStatus'] = EnumMapper$RecordStatusEnumConverter.toJson(recordStatus);
      return rt;
  }
}

