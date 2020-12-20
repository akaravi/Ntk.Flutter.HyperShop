import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserSignUpModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserSignUpModel extends ModelBase {
  AuthUserSignUpModel({this.captchaKey,this.captchaText,this.email,this.mobile,this.password,this.name,this.family,this.siteId,this.resellerSiteId});

  @JsonKey(name:'CaptchaKey', nullable: true)
  String captchaKey;


  @JsonKey(name:'CaptchaText', nullable: true)
  String captchaText;


  @JsonKey(name:'Email', nullable: true)
  String email;


  @JsonKey(name:'Mobile', nullable: true)
  String mobile;


  @JsonKey(name:'Password', nullable: true)
  String password;


  @JsonKey(name:'Name', nullable: true)
  String name;


  @JsonKey(name:'Family', nullable: true)
  String family;


  @JsonKey(name:'SiteId', nullable: true)
  int siteId;


  @JsonKey(name:'ResellerSiteId', nullable: true)
  int resellerSiteId;




  static AuthUserSignUpModel fromJsonObject(Object value) => AuthUserSignUpModel.fromJson(value);

  factory AuthUserSignUpModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AuthUserSignUpModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AuthUserSignUpModelToJson(this);
      return rt;
  }
}

