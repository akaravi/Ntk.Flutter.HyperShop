// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fileShareReciverCategoryModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileShareReciverCategoryModel _$FileShareReciverCategoryModelFromJson(
    Map<String, dynamic> json) {
  return FileShareReciverCategoryModel(
    fromDate: json['FromDate'] == null
        ? null
        : DateTime.parse(json['FromDate'] as String),
    linkShareServerCategoryId: json['LinkShareServerCategoryId'] as int,
    linkShareReciverCategoryId: json['LinkShareReciverCategoryId'] as int,
    expireDate: json['ExpireDate'] == null
        ? null
        : DateTime.parse(json['ExpireDate'] as String),
  );
}

Map<String, dynamic> _$FileShareReciverCategoryModelToJson(
        FileShareReciverCategoryModel instance) =>
    <String, dynamic>{
      'FromDate': instance.fromDate?.toIso8601String(),
      'LinkShareServerCategoryId': instance.linkShareServerCategoryId,
      'LinkShareReciverCategoryId': instance.linkShareReciverCategoryId,
      'ExpireDate': instance.expireDate?.toIso8601String(),
    };
