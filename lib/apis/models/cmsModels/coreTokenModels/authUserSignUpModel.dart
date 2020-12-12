import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserSignUpModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserSignUpModel extends ModelBase {
  AuthUserSignUpModel({this.captchaKey,this.captchaText,this.email,this.mobile,this.password,this.name,this.family,this.siteId,this.resellerSiteId});

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


  @JsonKey(name:'Name')
  String name;


  @JsonKey(name:'Family')
  String family;


  @JsonKey(name:'SiteId')
  int siteId;


  @JsonKey(name:'ResellerSiteId')
  int resellerSiteId;




  static AuthUserSignUpModel fromJsonObject(Object value) => AuthUserSignUpModel.fromJson(value);

  factory AuthUserSignUpModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserSignUpModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthUserSignUpModelToJson(this);
}

