import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/cmsModels/fileModels/fileCategoryModel.dart';
import 'package:hypertools/poco/enum_values.dart';

part 'fileContentModel.g.dart';

@JsonSerializable(nullable: false)
class FileContentModel extends ModelBase {
  FileContentModel({this.linkCategoryId,this.linkModuleMemberId,this.virtual_Category,this.category,this.fileName,this.description,this.fileExist,this.fileExistChecked,this.fileLastUseed,this.fileSrc,this.extension,this.fileSize,this.viewCount,this.tags,this.searchTarget,this.uiSearchTarget,this.moduleName,this.renderOrderImagePlace,this.renderOrderWidth,this.renderOrderHeight,this.downloadLinksrc,this.downloadLinksrcByDomain,this.uploadName,this.linkSiteId,this.id,this.createdDate,this.createdBy,this.updatedDate,this.updatedBy,this.recordStatus,this.antiInjectionGuid,this.antiInjectionDate,this.antiInjectionRun,this.antiInjectionExpiredMinute,this.antiInjectionToken,this.antiInjectionExpireDate});

  @JsonKey(name:'LinkCategoryId', nullable: true)
  int linkCategoryId;


  @JsonKey(name:'LinkModuleMemberId', nullable: true)
  int linkModuleMemberId;


  @JsonKey(name:'virtual_Category', nullable: true)
  FileCategoryModel virtual_Category;


  @JsonKey(name:'Category', nullable: true)
  FileCategoryModel category;


  @JsonKey(name:'FileName', nullable: true)
  String fileName;


  @JsonKey(name:'Description', nullable: true)
  String description;


  @JsonKey(name:'FileExist', nullable: true)
  bool fileExist;


  @JsonKey(name:'FileExistChecked', nullable: true)
  DateTime fileExistChecked;


  @JsonKey(name:'FileLastUseed', nullable: true)
  DateTime fileLastUseed;


  @JsonKey(name:'FileSrc', nullable: true)
  String fileSrc;


  @JsonKey(name:'Extension', nullable: true)
  String extension;


  @JsonKey(name:'FileSize', nullable: true)
  double fileSize;


  @JsonKey(name:'ViewCount', nullable: true)
  int viewCount;


  @JsonKey(name:'Tags', nullable: true)
  String tags;


  @JsonKey(name:'SearchTarget', nullable: true)
  String searchTarget;


  @JsonKey(name:'UiSearchTarget', nullable: true)
  String uiSearchTarget;


  @JsonKey(name:'ModuleName', nullable: true)
  String moduleName;


  @JsonKey(ignore: true)
  EnumImagePlace renderOrderImagePlace;


  @JsonKey(name:'RenderOrderWidth', nullable: true)
  int renderOrderWidth;


  @JsonKey(name:'RenderOrderHeight', nullable: true)
  int renderOrderHeight;


  @JsonKey(name:'DownloadLinksrc', nullable: true)
  String downloadLinksrc;


  @JsonKey(name:'DownloadLinksrcByDomain', nullable: true)
  String downloadLinksrcByDomain;


  @JsonKey(name:'uploadName', nullable: true)
  String uploadName;


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




  static FileContentModel fromJsonObject(Object value) => FileContentModel.fromJson(value);

  factory FileContentModel.fromJson(Map<String, dynamic> json) {
      var rt = _$FileContentModelFromJson(json);
      rt.renderOrderImagePlace = EnumMapper$EnumImagePlaceConverter.fromJson(json['RenderOrderImagePlace']);
      rt.recordStatus = EnumMapper$RecordStatusEnumConverter.fromJson(json['RecordStatus']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$FileContentModelToJson(this);
      rt['RenderOrderImagePlace'] = EnumMapper$EnumImagePlaceConverter.toJson(renderOrderImagePlace);
      rt['RecordStatus'] = EnumMapper$RecordStatusEnumConverter.toJson(recordStatus);
      return rt;
  }
}

