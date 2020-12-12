import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'tokenInfoModel.g.dart';

@JsonSerializable(nullable: false)
class TokenInfoModel extends ModelBase {
  TokenInfoModel({this.token,this.refresh_token,this.deviceToken,this.createdDate,this.tokenExpireDate,this.userId,this.deviceId,this.applicationId,this.siteId,this.userGroupId,this.userTypeTitle,this.userAccessAdminAllowToProfessionalData,this.userAccessAdminAllowToAllData,this.userType,this.userAccessAreaType,this.username,this.name,this.lastName,this.fullName,this.language,this.domain,this.subDomain,this.title,this.photoUrl,this.mobileConfirmed,this.emailConfirmed});

  @JsonKey(name:'token')
  String token;


  @JsonKey(name:'refresh_token')
  String refresh_token;


  @JsonKey(name:'DeviceToken')
  String deviceToken;


  @JsonKey(name:'CreatedDate')
  DateTime createdDate;


  @JsonKey(name:'tokenExpireDate')
  DateTime tokenExpireDate;


  @JsonKey(name:'UserId')
  int userId;


  @JsonKey(name:'DeviceId')
  int deviceId;


  @JsonKey(name:'ApplicationId')
  int applicationId;


  @JsonKey(name:'SiteId')
  int siteId;


  @JsonKey(name:'UserGroupId')
  int userGroupId;


  @JsonKey(name:'UserTypeTitle')
  String userTypeTitle;


  @JsonKey(name:'UserAccessAdminAllowToProfessionalData')
  bool userAccessAdminAllowToProfessionalData;


  @JsonKey(name:'UserAccessAdminAllowToAllData')
  bool userAccessAdminAllowToAllData;


  @JsonKey(name:'UserType')
  EnumManageUserAccessControllerTypes userType;


  @JsonKey(name:'UserAccessAreaType')
  ManageUserAccessAreaTypesEnum userAccessAreaType;


  @JsonKey(name:'Username')
  String username;


  @JsonKey(name:'Name')
  String name;


  @JsonKey(name:'LastName')
  String lastName;


  @JsonKey(name:'FullName')
  String fullName;


  @JsonKey(name:'Language')
  String language;


  @JsonKey(name:'Domain')
  String domain;


  @JsonKey(name:'SubDomain')
  String subDomain;


  @JsonKey(name:'Title')
  String title;


  @JsonKey(name:'PhotoUrl')
  String photoUrl;


  @JsonKey(name:'MobileConfirmed')
  bool mobileConfirmed;


  @JsonKey(name:'EmailConfirmed')
  bool emailConfirmed;




  static TokenInfoModel fromJsonObject(Object value) => TokenInfoModel.fromJson(value);

  factory TokenInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TokenInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$TokenInfoModelToJson(this);
}

