import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authEmailConfirmDtoModel.g.dart';

@JsonSerializable(nullable: false)
class AuthEmailConfirmDtoModel extends ModelBase {
  AuthEmailConfirmDtoModel({this.captchaKey,this.captchaText,this.linkUserId,this.email,this.code});

  @JsonKey(name:'CaptchaKey', nullable: true)
  String captchaKey;


  @JsonKey(name:'CaptchaText', nullable: true)
  String captchaText;


  @JsonKey(name:'LinkUserId', nullable: true)
  int linkUserId;


  @JsonKey(name:'Email', nullable: true)
  String email;


  @JsonKey(name:'Code', nullable: true)
  String code;




  static AuthEmailConfirmDtoModel fromJsonObject(Object value) => AuthEmailConfirmDtoModel.fromJson(value);

  factory AuthEmailConfirmDtoModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AuthEmailConfirmDtoModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AuthEmailConfirmDtoModelToJson(this);
      return rt;
  }
}

