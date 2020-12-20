import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'appMainLayoutMainRequestModel.g.dart';

@JsonSerializable(nullable: false)
class AppMainLayoutMainRequestModel extends ModelBase {
  AppMainLayoutMainRequestModel({this.userId,this.memberUserId,this.siteId,this.appTitle,this.appUrl,this.appId,this.appVersion,this.lastUpdateSource,this.lastUpdateTheme,this.lastUpdateApp,this.appForceUpdate,this.appThemeId});

  @JsonKey(name:'UserId', nullable: true)
  int userId;


  @JsonKey(name:'MemberUserId', nullable: true)
  int memberUserId;


  @JsonKey(name:'SiteId', nullable: true)
  int siteId;


  @JsonKey(name:'AppTitle', nullable: true)
  String appTitle;


  @JsonKey(name:'AppUrl', nullable: true)
  String appUrl;


  @JsonKey(name:'AppId', nullable: true)
  int appId;


  @JsonKey(name:'AppVersion', nullable: true)
  int appVersion;


  @JsonKey(name:'LastUpdateSource', nullable: true)
  DateTime lastUpdateSource;


  @JsonKey(name:'LastUpdateTheme', nullable: true)
  DateTime lastUpdateTheme;


  @JsonKey(name:'LastUpdateApp', nullable: true)
  DateTime lastUpdateApp;


  @JsonKey(name:'AppForceUpdate', nullable: true)
  bool appForceUpdate;


  @JsonKey(name:'AppThemeId', nullable: true)
  int appThemeId;




  static AppMainLayoutMainRequestModel fromJsonObject(Object value) => AppMainLayoutMainRequestModel.fromJson(value);

  factory AppMainLayoutMainRequestModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AppMainLayoutMainRequestModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AppMainLayoutMainRequestModelToJson(this);
      return rt;
  }
}

