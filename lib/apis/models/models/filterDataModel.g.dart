// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filterDataModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterDataModel _$FilterDataModelFromJson(Map<String, dynamic> json) {
  return FilterDataModel(
    filters: (json['Filters'] as List)
        ?.map((e) => e == null
            ? null
            : FilterDataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: json['value'] as String,
    stringForceNullSearch: json['StringForceNullSearch'] as bool,
    decimalForceNullSearch: json['DecimalForceNullSearch'] as bool,
    latitudeLongitudeForceNullSearch:
        json['LatitudeLongitudeForceNullSearch'] as bool,
    intValueForceNullSearch: json['IntValueForceNullSearch'] as bool,
    propertyName: json['PropertyName'] as String,
    propertyAnyName: json['PropertyAnyName'] as String,
    stringValue1: json['StringValue1'] as String,
    stringContainValues: (json['StringContainValues'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    intValue1: json['IntValue1'] as int,
    intValue2: json['IntValue2'] as int,
    intContainValues:
        (json['IntContainValues'] as List)?.map((e) => e as int)?.toList(),
    dateTimeValue1: json['DateTimeValue1'] == null
        ? null
        : DateTime.parse(json['DateTimeValue1'] as String),
    dateTimeValue2: json['DateTimeValue2'] == null
        ? null
        : DateTime.parse(json['DateTimeValue2'] as String),
    booleanValue1: json['BooleanValue1'] as bool,
    enumValue1: json['EnumValue1'] as String,
    singleValue1: (json['SingleValue1'] as num)?.toDouble(),
    singleValue2: (json['SingleValue2'] as num)?.toDouble(),
    decimalValue1: (json['DecimalValue1'] as num)?.toDouble(),
    decimalValue2: (json['DecimalValue2'] as num)?.toDouble(),
    latitudeValue1: (json['LatitudeValue1'] as num)?.toDouble(),
    longitudeValue1: (json['LongitudeValue1'] as num)?.toDouble(),
    latitudeLongitudeDistanceValue1:
        (json['LatitudeLongitudeDistanceValue1'] as num)?.toDouble(),
    latitudeLongitudeDistanceValue2:
        (json['LatitudeLongitudeDistanceValue2'] as num)?.toDouble(),
    latitudeLongitudeSortType: json['LatitudeLongitudeSortType'] as String,
    hierarchyIdLevel: json['HierarchyIdLevel'] as int,
  );
}

Map<String, dynamic> _$FilterDataModelToJson(FilterDataModel instance) =>
    <String, dynamic>{
      'Filters': instance.filters,
      'value': instance.value,
      'StringForceNullSearch': instance.stringForceNullSearch,
      'DecimalForceNullSearch': instance.decimalForceNullSearch,
      'LatitudeLongitudeForceNullSearch':
          instance.latitudeLongitudeForceNullSearch,
      'IntValueForceNullSearch': instance.intValueForceNullSearch,
      'PropertyName': instance.propertyName,
      'PropertyAnyName': instance.propertyAnyName,
      'StringValue1': instance.stringValue1,
      'StringContainValues': instance.stringContainValues,
      'IntValue1': instance.intValue1,
      'IntValue2': instance.intValue2,
      'IntContainValues': instance.intContainValues,
      'DateTimeValue1': instance.dateTimeValue1?.toIso8601String(),
      'DateTimeValue2': instance.dateTimeValue2?.toIso8601String(),
      'BooleanValue1': instance.booleanValue1,
      'EnumValue1': instance.enumValue1,
      'SingleValue1': instance.singleValue1,
      'SingleValue2': instance.singleValue2,
      'DecimalValue1': instance.decimalValue1,
      'DecimalValue2': instance.decimalValue2,
      'LatitudeValue1': instance.latitudeValue1,
      'LongitudeValue1': instance.longitudeValue1,
      'LatitudeLongitudeDistanceValue1':
          instance.latitudeLongitudeDistanceValue1,
      'LatitudeLongitudeDistanceValue2':
          instance.latitudeLongitudeDistanceValue2,
      'LatitudeLongitudeSortType': instance.latitudeLongitudeSortType,
      'HierarchyIdLevel': instance.hierarchyIdLevel,
    };
