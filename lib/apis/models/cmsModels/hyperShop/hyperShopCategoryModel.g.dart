// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hyperShopCategoryModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HyperShopCategoryModel _$HyperShopCategoryModelFromJson(
    Map<String, dynamic> json) {
  return HyperShopCategoryModel(
    parentCode: json['ParentCode'] as String,
    code: json['Code'] as String,
    name: json['Name'] as String,
    image: json['Image'] as String,
    memo: json['Memo'] as String,
    rowId: json['rowId'] as int,
  );
}

Map<String, dynamic> _$HyperShopCategoryModelToJson(
        HyperShopCategoryModel instance) =>
    <String, dynamic>{
      'ParentCode': instance.parentCode,
      'Code': instance.code,
      'Name': instance.name,
      'Image': instance.image,
      'Memo': instance.memo,
      'rowId': instance.rowId,
    };
