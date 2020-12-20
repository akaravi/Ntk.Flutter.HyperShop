import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'authUserSignOutModel.g.dart';

@JsonSerializable(nullable: false)
class AuthUserSignOutModel extends ModelBase {
  AuthUserSignOutModel({this.tokens,this.allToken});

  @JsonKey(name:'Tokens', nullable: true)
  List<String> tokens;


  @JsonKey(name:'AllToken', nullable: true)
  bool allToken;




  static AuthUserSignOutModel fromJsonObject(Object value) => AuthUserSignOutModel.fromJson(value);

  factory AuthUserSignOutModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AuthUserSignOutModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AuthUserSignOutModelToJson(this);
      return rt;
  }
}

