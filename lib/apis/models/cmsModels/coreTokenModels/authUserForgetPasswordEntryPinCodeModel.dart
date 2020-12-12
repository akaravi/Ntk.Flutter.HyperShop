import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserForgetPasswordEntryPinCodeModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserForgetPasswordEntryPinCodeModel extends ModelBase {
  AuthUserForgetPasswordEntryPinCodeModel({this.captchaKey,this.captchaText,this.email,this.activateCode,this.newPassword});

  @JsonKey(name:'CaptchaKey')
  String captchaKey;


  @JsonKey(name:'CaptchaText')
  String captchaText;


  @JsonKey(name:'email')
  String email;


  @JsonKey(name:'ActivateCode')
  String activateCode;


  @JsonKey(name:'NewPassword')
  String newPassword;




  static AuthUserForgetPasswordEntryPinCodeModel fromJsonObject(Object value) => AuthUserForgetPasswordEntryPinCodeModel.fromJson(value);

  factory AuthUserForgetPasswordEntryPinCodeModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserForgetPasswordEntryPinCodeModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthUserForgetPasswordEntryPinCodeModelToJson(this);
}

