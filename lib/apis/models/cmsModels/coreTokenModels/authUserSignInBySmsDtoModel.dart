import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserSignInBySmsDtoModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserSignInBySmsDtoModel extends ModelBase {
  AuthUserSignInBySmsDtoModel({this.captchaKey,this.captchaText,this.mobile,this.code,this.lang,this.siteId,this.resellerSiteId,this.isRemember});

  @JsonKey(name:'CaptchaKey')
  String captchaKey;


  @JsonKey(name:'CaptchaText')
  String captchaText;


  @JsonKey(name:'Mobile')
  String mobile;


  @JsonKey(name:'Code')
  String code;


  @JsonKey(name:'lang')
  String lang;


  @JsonKey(name:'SiteId')
  int siteId;


  @JsonKey(name:'ResellerSiteId')
  int resellerSiteId;


  @JsonKey(name:'IsRemember')
  bool isRemember;




  static AuthUserSignInBySmsDtoModel fromJsonObject(Object value) => AuthUserSignInBySmsDtoModel.fromJson(value);

  factory AuthUserSignInBySmsDtoModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserSignInBySmsDtoModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthUserSignInBySmsDtoModelToJson(this);
}

