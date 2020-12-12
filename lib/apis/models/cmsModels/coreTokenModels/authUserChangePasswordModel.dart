import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserChangePasswordModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserChangePasswordModel extends ModelBase {
  AuthUserChangePasswordModel({this.oldPassword,this.newPassword});

  @JsonKey(name:'OldPassword')
  String oldPassword;


  @JsonKey(name:'NewPassword')
  String newPassword;




  static AuthUserChangePasswordModel fromJsonObject(Object value) => AuthUserChangePasswordModel.fromJson(value);

  factory AuthUserChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserChangePasswordModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthUserChangePasswordModelToJson(this);
}

