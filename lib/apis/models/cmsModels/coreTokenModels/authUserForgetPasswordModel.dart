import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserForgetPasswordModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserForgetPasswordModel extends ModelBase {
  AuthUserForgetPasswordModel({this.captchaKey,this.captchaText,this.email,this.mobile});

  @JsonKey(name:'CaptchaKey', nullable: true)
  String captchaKey;


  @JsonKey(name:'CaptchaText', nullable: true)
  String captchaText;


  @JsonKey(name:'Email', nullable: true)
  String email;


  @JsonKey(name:'Mobile', nullable: true)
  String mobile;




  static AuthUserForgetPasswordModel fromJsonObject(Object value) => AuthUserForgetPasswordModel.fromJson(value);

  factory AuthUserForgetPasswordModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AuthUserForgetPasswordModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AuthUserForgetPasswordModelToJson(this);
      return rt;
  }
}

