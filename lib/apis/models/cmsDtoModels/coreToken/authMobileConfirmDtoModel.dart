import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authMobileConfirmDtoModel.g.dart';

@JsonSerializable(nullable: false)
class AuthMobileConfirmDtoModel extends ModelBase {
  AuthMobileConfirmDtoModel({this.captchaKey,this.captchaText,this.linkUserId,this.mobile,this.code});

  @JsonKey(name:'CaptchaKey')
  String captchaKey;


  @JsonKey(name:'CaptchaText')
  String captchaText;


  @JsonKey(name:'LinkUserId')
  int linkUserId;


  @JsonKey(name:'Mobile')
  String mobile;


  @JsonKey(name:'Code')
  String code;




  static AuthMobileConfirmDtoModel fromJsonObject(Object value) => AuthMobileConfirmDtoModel.fromJson(value);

  factory AuthMobileConfirmDtoModel.fromJson(Map<String, dynamic> json) =>
      _$AuthMobileConfirmDtoModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthMobileConfirmDtoModelToJson(this);
}

