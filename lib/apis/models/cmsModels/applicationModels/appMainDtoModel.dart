import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'appMainDtoModel.g.dart';

@JsonSerializable(nullable: false)
class AppMainDtoModel extends ModelBase {
  AppMainDtoModel({this.requestObject});

  @JsonKey(name:'RequestObject', nullable: true)
  Object requestObject;




  static AppMainDtoModel fromJsonObject(Object value) => AppMainDtoModel.fromJson(value);

  factory AppMainDtoModel.fromJson(Map<String, dynamic> json) {
      var rt = _$AppMainDtoModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$AppMainDtoModelToJson(this);
      return rt;
  }
}

