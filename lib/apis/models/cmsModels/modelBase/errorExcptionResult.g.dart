// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errorExcptionResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorExcptionResult _$ErrorExcptionResultFromJson(Map<String, dynamic> json) {
  return ErrorExcptionResult(
    status: json['Status'] as int,
    errors: (json['errors'] as List)?.map((e) => e as String)?.toList(),
    title: json['Title'] as String,
    traceId: json['traceId'] as String,
    errorMessage: json['ErrorMessage'] as String,
    linkFile: json['LinkFile'] as String,
    isSuccess: json['IsSuccess'] as bool,
  );
}

Map<String, dynamic> _$ErrorExcptionResultToJson(
        ErrorExcptionResult instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'errors': instance.errors,
      'Title': instance.title,
      'traceId': instance.traceId,
      'ErrorMessage': instance.errorMessage,
      'LinkFile': instance.linkFile,
      'IsSuccess': instance.isSuccess,
    };
