// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dateModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateModel _$DateModelFromJson(Map<String, dynamic> json) {
  return DateModel(
    now: DateTime.parse(json['Now'] as String),
    utcNow: DateTime.parse(json['UtcNow'] as String),
  );
}

Map<String, dynamic> _$DateModelToJson(DateModel instance) => <String, dynamic>{
      'Now': instance.now.toIso8601String(),
      'UtcNow': instance.utcNow.toIso8601String(),
    };
