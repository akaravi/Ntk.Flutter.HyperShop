import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserSignInModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserSignInModel extends ModelBase {
  AuthUserSignInModel({this.captchaKey,this.captchaText,this.email,this.mobile,this.password,this.isRemember,this.siteId,this.resellerSiteId,this.lang});

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


  @JsonKey(name:'IsRemember', nullable: true)
  bool isRemember;


  @JsonKey(name:'SiteId', nullable: true)
  int siteId;


  @JsonKey(name:'ResellerSiteId', nullable: true)
  int resellerSiteId;


  @JsonKey(name:'lang', nullable: true)
  String lang;




  static AuthUserSignInModel fromJsonObject(Object value) => AuthUserSignInModel.fromJson(value);

  factory AuthUserSignInModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AuthUserSignInModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AuthUserSignInModelToJson(this);
      return rt;
  }
}

