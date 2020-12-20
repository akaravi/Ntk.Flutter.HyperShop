import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'dateModel.g.dart';

@JsonSerializable(nullable: false)
class DateModel extends ModelBase {
  DateModel({this.now,this.utcNow});

  @JsonKey(name:'Now', nullable: true)
  DateTime now;


  @JsonKey(name:'UtcNow', nullable: true)
  DateTime utcNow;




  static DateModel fromJsonObject(Object value) => DateModel.fromJson(value);

  factory DateModel.fromJson(Map<String, dynamic> json) {
      var rt = _$DateModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$DateModelToJson(this);
      return rt;
  }
}

