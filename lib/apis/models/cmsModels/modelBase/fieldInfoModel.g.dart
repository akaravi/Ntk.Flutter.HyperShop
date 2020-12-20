// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fieldInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldInfoModel _$FieldInfoModelFromJson(Map<String, dynamic> json) {
  return FieldInfoModel(
    fieldName: json['FieldName'] as String,
    fieldType: json['FieldType'] as String,
    fieldTypeClass: json['FieldTypeClass'] as String,
    fieldTitle: json['FieldTitle'] as String,
    fieldDescription: json['FieldDescription'] as String,
    fieldScriptDescription: json['FieldScriptDescription'] as String,
    fieldDefaultValue: json['FieldDefaultValue'] as String,
    fieldValue: json['FieldValue'] as String,
    fieldTypeFullName: json['FieldTypeFullName'] as String,
    fieldsInfo: (json['fieldsInfo'] as List)
        ?.map((e) => e == null
            ? null
            : FieldInfoModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FieldInfoModelToJson(FieldInfoModel instance) =>
    <String, dynamic>{
      'FieldName': instance.fieldName,
      'FieldType': instance.fieldType,
      'FieldTypeClass': instance.fieldTypeClass,
      'FieldTitle': instance.fieldTitle,
      'FieldDescription': instance.fieldDescription,
      'FieldScriptDescription': instance.fieldScriptDescription,
      'FieldDefaultValue': instance.fieldDefaultValue,
      'FieldValue': instance.fieldValue,
      'FieldTypeFullName': instance.fieldTypeFullName,
      'fieldsInfo': instance.fieldsInfo,
    };
