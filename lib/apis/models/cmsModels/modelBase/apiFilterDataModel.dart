import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'apiFilterDataModel.g.dart';

@JsonSerializable(nullable: false)
class ApiFilterDataModel extends ModelBase {
  ApiFilterDataModel({this.filters,this.value,this.clauseType,this.searchType,this.propertyName,this.intValueForceNullSearch,this.decimalForceNullSearch,this.stringValueForceNullSearch});

  @JsonKey(name:'Filters')
  List<ApiFilterDataModel> filters;


  @JsonKey(name:'value')
  String value;


  @JsonKey(name:'ClauseType')
  ClauseType clauseType;


  @JsonKey(name:'SearchType')
  FilterDataModelSearchTypes searchType;


  @JsonKey(name:'PropertyName')
  String propertyName;


  @JsonKey(name:'IntValueForceNullSearch')
  bool intValueForceNullSearch;


  @JsonKey(name:'DecimalForceNullSearch')
  bool decimalForceNullSearch;


  @JsonKey(name:'StringValueForceNullSearch')
  bool stringValueForceNullSearch;




  static ApiFilterDataModel fromJsonObject(Object value) => ApiFilterDataModel.fromJson(value);

  factory ApiFilterDataModel.fromJson(Map<String, dynamic> json) =>
      _$ApiFilterDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiFilterDataModelToJson(this);
}

