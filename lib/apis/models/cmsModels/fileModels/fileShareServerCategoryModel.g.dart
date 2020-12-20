// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fileShareServerCategoryModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileShareServerCategoryModel _$FileShareServerCategoryModelFromJson(
    Map<String, dynamic> json) {
  return FileShareServerCategoryModel(
    title: json['Title'] as String,
    description: json['Description'] as String,
    linkShareMainAdminSettingId: json['LinkShareMainAdminSettingId'] as int,
    linkServerCategoryId: json['LinkServerCategoryId'] as int,
    expireDate: json['ExpireDate'] == null
        ? null
        : DateTime.parse(json['ExpireDate'] as String),
  );
}

Map<String, dynamic> _$FileShareServerCategoryModelToJson(
        FileShareServerCategoryModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Description': instance.description,
      'LinkShareMainAdminSettingId': instance.linkShareMainAdminSettingId,
      'LinkServerCategoryId': instance.linkServerCategoryId,
      'ExpireDate': instance.expireDate?.toIso8601String(),
    };
