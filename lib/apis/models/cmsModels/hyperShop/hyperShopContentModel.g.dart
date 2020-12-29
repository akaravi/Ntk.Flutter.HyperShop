// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hyperShopContentModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HyperShopContentModel _$HyperShopContentModelFromJson(
    Map<String, dynamic> json) {
  return HyperShopContentModel(
    code: json['Code'] as String,
    name: json['Name'] as String,
    unit: json['Unit'] as String,
    currency: json['Currency'] as String,
    categoryCode: json['CategoryCode'] as String,
    category: json['Category'] as String,
    status: json['Status'] as bool,
    image: json['Image'] as String,
    memo: json['Memo'] as String,
    price: (json['Price'] as num)?.toDouble(),
    salePrice: (json['SalePrice'] as num)?.toDouble(),
    count: json['Count'] as int,
    discount: json['Discount'] as int,
    shortDetails: json['ShortDetails'] as String,
    description: json['Description'] as String,
    isNewPro: json['IsNewPro'] as bool,
    brand: json['Brand'] as String,
    sale: json['Sale'] as bool,
    tags: json['Tags'] as String,
    colors: json['Colors'] as String,
    buyCount: json['buyCount'] as int,
    measurement: json['measurement'] as String,
    rowId: json['rowId'] as int,
  );
}

Map<String, dynamic> _$HyperShopContentModelToJson(
        HyperShopContentModel instance) =>
    <String, dynamic>{
      'Code': instance.code,
      'Name': instance.name,
      'Unit': instance.unit,
      'Currency': instance.currency,
      'CategoryCode': instance.categoryCode,
      'Category': instance.category,
      'Status': instance.status,
      'Image': instance.image,
      'Memo': instance.memo,
      'Price': instance.price,
      'SalePrice': instance.salePrice,
      'Count': instance.count,
      'Discount': instance.discount,
      'ShortDetails': instance.shortDetails,
      'Description': instance.description,
      'IsNewPro': instance.isNewPro,
      'Brand': instance.brand,
      'Sale': instance.sale,
      'Tags': instance.tags,
      'buyCount': instance.buyCount,
      'Colors': instance.colors,
      'measurement': instance.measurement,
      'rowId': instance.rowId,
    };
