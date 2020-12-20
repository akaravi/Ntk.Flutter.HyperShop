import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authRenewTokenModel.g.dart';

@JsonSerializable(nullable: false)
class AuthRenewTokenModel extends ModelBase {
  AuthRenewTokenModel({this.siteId,this.userId,this.userAccessAdminAllowToAllData,this.userAccessAdminAllowToProfessionalData,this.lang});

  @JsonKey(name:'SiteId', nullable: true)
  int siteId;


  @JsonKey(name:'UserId', nullable: true)
  int userId;


  @JsonKey(name:'UserAccessAdminAllowToAllData', nullable: true)
  bool userAccessAdminAllowToAllData;


  @JsonKey(name:'UserAccessAdminAllowToProfessionalData', nullable: true)
  bool userAccessAdminAllowToProfessionalData;


  @JsonKey(name:'lang', nullable: true)
  String lang;




  static AuthRenewTokenModel fromJsonObject(Object value) => AuthRenewTokenModel.fromJson(value);

  factory AuthRenewTokenModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AuthRenewTokenModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AuthRenewTokenModelToJson(this);
      return rt;
  }
}

