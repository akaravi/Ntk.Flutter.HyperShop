import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserForgetPasswordEntryPinCodeModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserForgetPasswordEntryPinCodeModel extends ModelBase {
  AuthUserForgetPasswordEntryPinCodeModel({this.captchaKey,this.captchaText,this.email,this.activateCode,this.newPassword});

  @JsonKey(name:'CaptchaKey', nullable: true)
  String captchaKey;


  @JsonKey(name:'CaptchaText', nullable: true)
  String captchaText;


  @JsonKey(name:'email', nullable: true)
  String email;


  @JsonKey(name:'ActivateCode', nullable: true)
  String activateCode;


  @JsonKey(name:'NewPassword', nullable: true)
  String newPassword;




  static AuthUserForgetPasswordEntryPinCodeModel fromJsonObject(Object value) => AuthUserForgetPasswordEntryPinCodeModel.fromJson(value);

  factory AuthUserForgetPasswordEntryPinCodeModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AuthUserForgetPasswordEntryPinCodeModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AuthUserForgetPasswordEntryPinCodeModelToJson(this);
      return rt;
  }
}

