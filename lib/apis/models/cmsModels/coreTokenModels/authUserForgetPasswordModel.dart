import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserForgetPasswordModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserForgetPasswordModel extends ModelBase {
  AuthUserForgetPasswordModel({this.captchaKey,this.captchaText,this.email,this.mobile});

  @JsonKey(name:'CaptchaKey')
  String captchaKey;


  @JsonKey(name:'CaptchaText')
  String captchaText;


  @JsonKey(name:'Email')
  String email;


  @JsonKey(name:'Mobile')
  String mobile;




  static AuthUserForgetPasswordModel fromJsonObject(Object value) => AuthUserForgetPasswordModel.fromJson(value);

  factory AuthUserForgetPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserForgetPasswordModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthUserForgetPasswordModelToJson(this);
}

