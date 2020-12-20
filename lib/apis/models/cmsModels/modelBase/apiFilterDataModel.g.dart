// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiFilterDataModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiFilterDataModel _$ApiFilterDataModelFromJson(Map<String, dynamic> json) {
  return ApiFilterDataModel(
    filters: (json['Filters'] as List)
        ?.map((e) => e == null
            ? null
            : ApiFilterDataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: json['value'] as String,
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
      'PropertyName': instance.propertyName,
      'IntValueForceNullSearch': instance.intValueForceNullSearch,
      'DecimalForceNullSearch': instance.decimalForceNullSearch,
      'StringValueForceNullSearch': instance.stringValueForceNullSearch,
    };
