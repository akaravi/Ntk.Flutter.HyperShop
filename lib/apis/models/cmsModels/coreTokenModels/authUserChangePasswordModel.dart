import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserChangePasswordModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserChangePasswordModel extends ModelBase {
  AuthUserChangePasswordModel({this.oldPassword,this.newPassword});

  @JsonKey(name:'OldPassword', nullable: true)
  String oldPassword;


  @JsonKey(name:'NewPassword', nullable: true)
  String newPassword;




  static AuthUserChangePasswordModel fromJsonObject(Object value) => AuthUserChangePasswordModel.fromJson(value);

  factory AuthUserChangePasswordModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AuthUserChangePasswordModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AuthUserChangePasswordModelToJson(this);
      return rt;
  }
}

