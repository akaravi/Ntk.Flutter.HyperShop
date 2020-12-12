import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'dateModel.g.dart';

@JsonSerializable(nullable: false)
class DateModel extends ModelBase {
  DateModel({this.now,this.utcNow});

  @JsonKey(name:'Now')
  DateTime now;


  @JsonKey(name:'UtcNow')
  DateTime utcNow;




  static DateModel fromJsonObject(Object value) => DateModel.fromJson(value);

  factory DateModel.fromJson(Map<String, dynamic> json) =>
      _$DateModelFromJson(json);
  Map<String, dynamic> toJson() => _$DateModelToJson(this);
}

