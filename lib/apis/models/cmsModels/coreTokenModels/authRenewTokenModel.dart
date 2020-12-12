import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authRenewTokenModel.g.dart';

@JsonSerializable(nullable: false)
class AuthRenewTokenModel extends ModelBase {
  AuthRenewTokenModel({this.siteId,this.userId,this.userAccessAdminAllowToAllData,this.userAccessAdminAllowToProfessionalData,this.lang});

  @JsonKey(name:'SiteId')
  int siteId;


  @JsonKey(name:'UserId')
  int userId;


  @JsonKey(name:'UserAccessAdminAllowToAllData')
  bool userAccessAdminAllowToAllData;


  @JsonKey(name:'UserAccessAdminAllowToProfessionalData')
  bool userAccessAdminAllowToProfessionalData;


  @JsonKey(name:'lang')
  String lang;




  static AuthRenewTokenModel fromJsonObject(Object value) => AuthRenewTokenModel.fromJson(value);

  factory AuthRenewTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AuthRenewTokenModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthRenewTokenModelToJson(this);
}

