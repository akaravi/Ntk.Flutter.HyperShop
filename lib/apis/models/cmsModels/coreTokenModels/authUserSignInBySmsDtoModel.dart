import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserSignInBySmsDtoModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserSignInBySmsDtoModel extends ModelBase {
  AuthUserSignInBySmsDtoModel({this.captchaKey,this.captchaText,this.mobile,this.code,this.lang,this.siteId,this.resellerSiteId,this.isRemember});

  @JsonKey(name:'CaptchaKey', nullable: true)
  String captchaKey;


  @JsonKey(name:'CaptchaText', nullable: true)
  String captchaText;


  @JsonKey(name:'Mobile', nullable: true)
  String mobile;


  @JsonKey(name:'Code', nullable: true)
  String code;


  @JsonKey(name:'lang', nullable: true)
  String lang;


  @JsonKey(name:'SiteId', nullable: true)
  int siteId;


  @JsonKey(name:'ResellerSiteId', nullable: true)
  int resellerSiteId;


  @JsonKey(name:'IsRemember', nullable: true)
  bool isRemember;




  static AuthUserSignInBySmsDtoModel fromJsonObject(Object value) => AuthUserSignInBySmsDtoModel.fromJson(value);

  factory AuthUserSignInBySmsDtoModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AuthUserSignInBySmsDtoModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AuthUserSignInBySmsDtoModelToJson(this);
      return rt;
  }
}

