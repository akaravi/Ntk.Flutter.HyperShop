import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'tokenInfoModel.g.dart';

@JsonSerializable(nullable: false)
class TokenInfoModel extends ModelBase {
  TokenInfoModel({this.token,this.refresh_token,this.deviceToken,this.createdDate,this.tokenExpireDate,this.userId,this.deviceId,this.applicationId,this.siteId,this.userGroupId,this.userTypeTitle,this.userAccessAdminAllowToProfessionalData,this.userAccessAdminAllowToAllData,this.userType,this.userAccessAreaType,this.username,this.name,this.lastName,this.fullName,this.language,this.domain,this.subDomain,this.title,this.photoUrl,this.mobileConfirmed,this.emailConfirmed});

  @JsonKey(name:'token', nullable: true)
  String token;


  @JsonKey(name:'refresh_token', nullable: true)
  String refresh_token;


  @JsonKey(name:'DeviceToken', nullable: true)
  String deviceToken;


  @JsonKey(name:'CreatedDate', nullable: true)
  DateTime createdDate;


  @JsonKey(name:'tokenExpireDate', nullable: true)
  DateTime tokenExpireDate;


  @JsonKey(name:'UserId', nullable: true)
  int userId;


  @JsonKey(name:'DeviceId', nullable: true)
  int deviceId;


  @JsonKey(name:'ApplicationId', nullable: true)
  int applicationId;


  @JsonKey(name:'SiteId', nullable: true)
  int siteId;


  @JsonKey(name:'UserGroupId', nullable: true)
  int userGroupId;


  @JsonKey(name:'UserTypeTitle', nullable: true)
  String userTypeTitle;


  @JsonKey(name:'UserAccessAdminAllowToProfessionalData', nullable: true)
  bool userAccessAdminAllowToProfessionalData;


  @JsonKey(name:'UserAccessAdminAllowToAllData', nullable: true)
  bool userAccessAdminAllowToAllData;


  @JsonKey(ignore: true)
  EnumManageUserAccessControllerTypes userType;


  @JsonKey(ignore: true)
  ManageUserAccessAreaTypesEnum userAccessAreaType;


  @JsonKey(name:'Username', nullable: true)
  String username;


  @JsonKey(name:'Name', nullable: true)
  String name;


  @JsonKey(name:'LastName', nullable: true)
  String lastName;


  @JsonKey(name:'FullName', nullable: true)
  String fullName;


  @JsonKey(name:'Language', nullable: true)
  String language;


  @JsonKey(name:'Domain', nullable: true)
  String domain;


  @JsonKey(name:'SubDomain', nullable: true)
  String subDomain;


  @JsonKey(name:'Title', nullable: true)
  String title;


  @JsonKey(name:'PhotoUrl', nullable: true)
  String photoUrl;


  @JsonKey(name:'MobileConfirmed', nullable: true)
  bool mobileConfirmed;


  @JsonKey(name:'EmailConfirmed', nullable: true)
  bool emailConfirmed;




  static TokenInfoModel fromJsonObject(Object value) => TokenInfoModel.fromJson(value);

  factory TokenInfoModel.fromJson(Map<String, dynamic> json) {
      var rt = _$TokenInfoModelFromJson(json);
      rt.userType = EnumMapper$EnumManageUserAccessControllerTypesConverter.fromJson(json['UserType']);
      rt.userAccessAreaType = EnumMapper$ManageUserAccessAreaTypesEnumConverter.fromJson(json['UserAccessAreaType']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$TokenInfoModelToJson(this);
      rt['UserType'] = EnumMapper$EnumManageUserAccessControllerTypesConverter.toJson(userType);
      rt['UserAccessAreaType'] = EnumMapper$ManageUserAccessAreaTypesEnumConverter.toJson(userAccessAreaType);
      return rt;
  }
}

