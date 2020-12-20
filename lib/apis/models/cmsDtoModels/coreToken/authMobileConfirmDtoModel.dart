import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authMobileConfirmDtoModel.g.dart';

@JsonSerializable(nullable: false)
class AuthMobileConfirmDtoModel extends ModelBase {
  AuthMobileConfirmDtoModel({this.captchaKey,this.captchaText,this.linkUserId,this.mobile,this.code});

  @JsonKey(name:'CaptchaKey', nullable: true)
  String captchaKey;


  @JsonKey(name:'CaptchaText', nullable: true)
  String captchaText;


  @JsonKey(name:'LinkUserId', nullable: true)
  int linkUserId;


  @JsonKey(name:'Mobile', nullable: true)
  String mobile;


  @JsonKey(name:'Code', nullable: true)
  String code;




  static AuthMobileConfirmDtoModel fromJsonObject(Object value) => AuthMobileConfirmDtoModel.fromJson(value);

  factory AuthMobileConfirmDtoModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AuthMobileConfirmDtoModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AuthMobileConfirmDtoModelToJson(this);
      return rt;
  }
}

