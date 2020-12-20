import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'apiFilterDataModel.g.dart';

@JsonSerializable(nullable: false)
class ApiFilterDataModel extends ModelBase {
  ApiFilterDataModel({this.filters,this.value,this.clauseType,this.searchType,this.propertyName,this.intValueForceNullSearch,this.decimalForceNullSearch,this.stringValueForceNullSearch});

  @JsonKey(name:'Filters', nullable: true)
  List<ApiFilterDataModel> filters;


  @JsonKey(name:'value', nullable: true)
  String value;


  @JsonKey(ignore: true)
  ClauseType clauseType;


  @JsonKey(ignore: true)
  FilterDataModelSearchTypes searchType;


  @JsonKey(name:'PropertyName', nullable: true)
  String propertyName;


  @JsonKey(name:'IntValueForceNullSearch', nullable: true)
  bool intValueForceNullSearch;


  @JsonKey(name:'DecimalForceNullSearch', nullable: true)
  bool decimalForceNullSearch;


  @JsonKey(name:'StringValueForceNullSearch', nullable: true)
  bool stringValueForceNullSearch;




  static ApiFilterDataModel fromJsonObject(Object value) => ApiFilterDataModel.fromJson(value);

  factory ApiFilterDataModel.fromJson(Map<String, dynamic> json) {
      var rt = _$ApiFilterDataModelFromJson(json);
      rt.clauseType = EnumMapper$ClauseTypeConverter.fromJson(json['ClauseType']);
      rt.searchType = EnumMapper$FilterDataModelSearchTypesConverter.fromJson(json['SearchType']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$ApiFilterDataModelToJson(this);
      rt['ClauseType'] = EnumMapper$ClauseTypeConverter.toJson(clauseType);
      rt['SearchType'] = EnumMapper$FilterDataModelSearchTypesConverter.toJson(searchType);
      return rt;
  }
}

