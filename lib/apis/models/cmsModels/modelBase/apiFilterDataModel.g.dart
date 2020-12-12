// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiFilterDataModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiFilterDataModel _$ApiFilterDataModelFromJson(Map<String, dynamic> json) {
  return ApiFilterDataModel(
    filters: (json['Filters'] as List)
        .map((e) => ApiFilterDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    value: json['value'] as String,
    clauseType: _$enumDecode(_$ClauseTypeEnumMap, json['ClauseType']),
    searchType:
        _$enumDecode(_$FilterDataModelSearchTypesEnumMap, json['SearchType']),
    propertyName: json['PropertyName'] as String,
    intValueForceNullSearch: json['IntValueForceNullSearch'] as bool,
    decimalForceNullSearch: json['DecimalForceNullSearch'] as bool,
    stringValueForceNullSearch: json['StringValueForceNullSearch'] as bool,
  );
}

Map<String, dynamic> _$ApiFilterDataModelToJson(ApiFilterDataModel instance) =>
    <String, dynamic>{
      'Filters': instance.filters,
      'value': instance.value,
      'ClauseType': _$ClauseTypeEnumMap[instance.clauseType],
      'SearchType': _$FilterDataModelSearchTypesEnumMap[instance.searchType],
      'PropertyName': instance.propertyName,
      'IntValueForceNullSearch': instance.intValueForceNullSearch,
      'DecimalForceNullSearch': instance.decimalForceNullSearch,
      'StringValueForceNullSearch': instance.stringValueForceNullSearch,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

const _$ClauseTypeEnumMap = {
  ClauseType.Or: 'Or',
  ClauseType.And: 'And',
};

const _$FilterDataModelSearchTypesEnumMap = {
  FilterDataModelSearchTypes.Equal: 'Equal',
  FilterDataModelSearchTypes.NotEqual: 'NotEqual',
  FilterDataModelSearchTypes.LessThan: 'LessThan',
  FilterDataModelSearchTypes.GreaterThan: 'GreaterThan',
  FilterDataModelSearchTypes.Between: 'Between',
  FilterDataModelSearchTypes.Contains: 'Contains',
  FilterDataModelSearchTypes.NotContains: 'NotContains',
  FilterDataModelSearchTypes.BeginsWith: 'BeginsWith',
  FilterDataModelSearchTypes.EndsWith: 'EndsWith',
  FilterDataModelSearchTypes.LessThanOrEqualTo: 'LessThanOrEqualTo',
  FilterDataModelSearchTypes.GreaterThanOrEqualTo: 'GreaterThanOrEqualTo',
};
