import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authEmailConfirmDtoModel.g.dart';

@JsonSerializable(nullable: false)
class AuthEmailConfirmDtoModel extends ModelBase {
  AuthEmailConfirmDtoModel({this.captchaKey,this.captchaText,this.linkUserId,this.email,this.code});

  @JsonKey(name:'CaptchaKey')
  String captchaKey;


  @JsonKey(name:'CaptchaText')
  String captchaText;


  @JsonKey(name:'LinkUserId')
  int linkUserId;


  @JsonKey(name:'Email')
  String email;


  @JsonKey(name:'Code')
  String code;




  static AuthEmailConfirmDtoModel fromJsonObject(Object value) => AuthEmailConfirmDtoModel.fromJson(value);

  factory AuthEmailConfirmDtoModel.fromJson(Map<String, dynamic> json) =>
      _$AuthEmailConfirmDtoModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthEmailConfirmDtoModelToJson(this);
}

