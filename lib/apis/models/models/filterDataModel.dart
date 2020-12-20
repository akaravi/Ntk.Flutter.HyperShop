import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'filterDataModel.g.dart';

@JsonSerializable(nullable: false)
class FilterDataModel extends ModelBase {
  FilterDataModel({this.filters,this.value,this.stringForceNullSearch,this.decimalForceNullSearch,this.latitudeLongitudeForceNullSearch,this.intValueForceNullSearch,this.propertyName,this.propertyAnyName,this.clauseType,this.searchType,this.stringValue1,this.stringContainValues,this.intValue1,this.intValue2,this.intContainValues,this.dateTimeValue1,this.dateTimeValue2,this.booleanValue1,this.enumValue1,this.singleValue1,this.singleValue2,this.decimalValue1,this.decimalValue2,this.latitudeValue1,this.longitudeValue1,this.latitudeLongitudeDistanceValue1,this.latitudeLongitudeDistanceValue2,this.latitudeLongitudeSortType,this.hierarchyIdLevel});

  @JsonKey(name:'Filters', nullable: true)
  List<FilterDataModel> filters;


  @JsonKey(name:'value', nullable: true)
  String value;


  @JsonKey(name:'StringForceNullSearch', nullable: true)
  bool stringForceNullSearch;


  @JsonKey(name:'DecimalForceNullSearch', nullable: true)
  bool decimalForceNullSearch;


  @JsonKey(name:'LatitudeLongitudeForceNullSearch', nullable: true)
  bool latitudeLongitudeForceNullSearch;


  @JsonKey(name:'IntValueForceNullSearch', nullable: true)
  bool intValueForceNullSearch;


  @JsonKey(name:'PropertyName', nullable: true)
  String propertyName;


  @JsonKey(name:'PropertyAnyName', nullable: true)
  String propertyAnyName;


  @JsonKey(ignore: true)
  ClauseType clauseType;


  @JsonKey(ignore: true)
  FilterDataModelSearchTypes searchType;


  @JsonKey(name:'StringValue1', nullable: true)
  String stringValue1;


  @JsonKey(name:'StringContainValues', nullable: true)
  List<String> stringContainValues;


  @JsonKey(name:'IntValue1', nullable: true)
  int intValue1;


  @JsonKey(name:'IntValue2', nullable: true)
  int intValue2;


  @JsonKey(name:'IntContainValues', nullable: true)
  List<int> intContainValues;


  @JsonKey(name:'DateTimeValue1', nullable: true)
  DateTime dateTimeValue1;


  @JsonKey(name:'DateTimeValue2', nullable: true)
  DateTime dateTimeValue2;


  @JsonKey(name:'BooleanValue1', nullable: true)
  bool booleanValue1;


  @JsonKey(name:'EnumValue1', nullable: true)
  String enumValue1;


  @JsonKey(name:'SingleValue1', nullable: true)
  double singleValue1;


  @JsonKey(name:'SingleValue2', nullable: true)
  double singleValue2;


  @JsonKey(name:'DecimalValue1', nullable: true)
  double decimalValue1;


  @JsonKey(name:'DecimalValue2', nullable: true)
  double decimalValue2;


  @JsonKey(name:'LatitudeValue1', nullable: true)
  double latitudeValue1;


  @JsonKey(name:'LongitudeValue1', nullable: true)
  double longitudeValue1;


  @JsonKey(name:'LatitudeLongitudeDistanceValue1', nullable: true)
  double latitudeLongitudeDistanceValue1;


  @JsonKey(name:'LatitudeLongitudeDistanceValue2', nullable: true)
  double latitudeLongitudeDistanceValue2;


  @JsonKey(name:'LatitudeLongitudeSortType', nullable: true)
  String latitudeLongitudeSortType;


  @JsonKey(name:'HierarchyIdLevel', nullable: true)
  int hierarchyIdLevel;




  static FilterDataModel fromJsonObject(Object value) => FilterDataModel.fromJson(value);

  factory FilterDataModel.fromJson(Map<String, dynamic> json) {
      var rt = _$FilterDataModelFromJson(json);
      rt.clauseType = EnumMapper$ClauseTypeConverter.fromJson(json['ClauseType']);
      rt.searchType = EnumMapper$FilterDataModelSearchTypesConverter.fromJson(json['SearchType']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$FilterDataModelToJson(this);
      rt['ClauseType'] = EnumMapper$ClauseTypeConverter.toJson(clauseType);
      rt['SearchType'] = EnumMapper$FilterDataModelSearchTypesConverter.toJson(searchType);
      return rt;
  }
}

