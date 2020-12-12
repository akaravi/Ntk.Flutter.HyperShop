import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserSignOutModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserSignOutModel extends ModelBase {
  AuthUserSignOutModel({this.tokens,this.allToken});

  @JsonKey(name:'Tokens')
  List<String> tokens;


  @JsonKey(name:'AllToken')
  bool allToken;




  static AuthUserSignOutModel fromJsonObject(Object value) => AuthUserSignOutModel.fromJson(value);

  factory AuthUserSignOutModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserSignOutModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthUserSignOutModelToJson(this);
}

