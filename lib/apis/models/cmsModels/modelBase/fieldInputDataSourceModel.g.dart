// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fieldInputDataSourceModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldInputDataSourceModel _$FieldInputDataSourceModelFromJson(
    Map<String, dynamic> json) {
  return FieldInputDataSourceModel(
    inputFixed: json['InputFixed'] as String,
    inputForm: json['InputForm'] as String,
    inputRequest: json['InputRequest'] as String,
    inputBeforProcess: json['InputBeforProcess'] as String,
    inputControler: json['InputControler'] as String,
  );
}

Map<String, dynamic> _$FieldInputDataSourceModelToJson(
        FieldInputDataSourceModel instance) =>
    <String, dynamic>{
      'InputFixed': instance.inputFixed,
      'InputForm': instance.inputForm,
      'InputRequest': instance.inputRequest,
      'InputBeforProcess': instance.inputBeforProcess,
      'InputControler': instance.inputControler,
    };
