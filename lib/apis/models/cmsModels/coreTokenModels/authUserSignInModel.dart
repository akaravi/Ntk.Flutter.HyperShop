import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserSignInModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserSignInModel extends ModelBase {
  AuthUserSignInModel({this.captchaKey,this.captchaText,this.email,this.mobile,this.password,this.isRemember,this.siteId,this.resellerSiteId,this.lang});

  @JsonKey(name:'CaptchaKey')
  String captchaKey;


  @JsonKey(name:'CaptchaText')
  String captchaText;


  @JsonKey(name:'Email')
  String email;


  @JsonKey(name:'Mobile')
  String mobile;


  @JsonKey(name:'Password')
  String password;


  @JsonKey(name:'IsRemember')
  bool isRemember;


  @JsonKey(name:'SiteId')
  int siteId;


  @JsonKey(name:'ResellerSiteId')
  int resellerSiteId;


  @JsonKey(name:'lang')
  String lang;




  static AuthUserSignInModel fromJsonObject(Object value) => AuthUserSignInModel.fromJson(value);

  factory AuthUserSignInModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserSignInModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthUserSignInModelToJson(this);
}

