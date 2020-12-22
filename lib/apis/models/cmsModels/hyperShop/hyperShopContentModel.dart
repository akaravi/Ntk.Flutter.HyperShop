import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hyperShopContentModel.g.dart';

@JsonSerializable(nullable: false)
class HyperShopContentModel extends ModelBase {
  HyperShopContentModel(
      {this.code,
      this.name,
      this.unit,
      this.currency,
      this.categoryCode,
      this.category,
      this.status,
      this.image,
      this.memo,
      this.price,
      this.salePrice,
      this.count,
      this.discount,
      this.shortDetails,
      this.description,
      this.isNewPro,
      this.brand,
      this.sale,
      this.tags,
      this.colors,
      this.measurement,
      this.isShowMoreObject = false,
      this.rowId});

  @JsonKey(name: 'Code', nullable: true)
  String code;

  @JsonKey(name: 'Name', nullable: true)
  String name;

  @JsonKey(name: 'Unit', nullable: true)
  String unit;

  @JsonKey(name: 'Currency', nullable: true)
  String currency;

  @JsonKey(name: 'CategoryCode', nullable: true)
  String categoryCode;

  @JsonKey(name: 'Category', nullable: true)
  String category;

  @JsonKey(name: 'Status', nullable: true)
  bool status;

  @JsonKey(name: 'Image', nullable: true)
  String image;

  @JsonKey(name: 'Memo', nullable: true)
  String memo;

  @JsonKey(name: 'Price', nullable: true)
  double price;

  @JsonKey(name: 'SalePrice', nullable: true)
  double salePrice;

  @JsonKey(name: 'Count', nullable: true)
  int count;

  @JsonKey(name: 'Discount', nullable: true)
  int discount;

  @JsonKey(name: 'ShortDetails', nullable: true)
  String shortDetails;

  @JsonKey(name: 'Description', nullable: true)
  String description;

  @JsonKey(name: 'IsNewPro', nullable: true)
  bool isNewPro;

  @JsonKey(name: 'Brand', nullable: true)
  String brand;

  @JsonKey(name: 'Sale', nullable: true)
  bool sale;

  @JsonKey(name: 'Tags', nullable: true)
  String tags;

  @JsonKey(name: 'Colors', nullable: true)
  String colors;

  @JsonKey(name: 'measurement', nullable: true)
  String measurement;

  @JsonKey(name: 'rowId', nullable: true)
  int rowId;

  @JsonKey(ignore: true)
  bool isShowMoreObject = false;

  static HyperShopContentModel fromJsonObject(Object value) =>
      HyperShopContentModel.fromJson(value);

  factory HyperShopContentModel.fromJson(Map<String, dynamic> json) {
    var rt = _$HyperShopContentModelFromJson(json);
    return rt;
  }
  Map<String, dynamic> toJson() {
    var rt = _$HyperShopContentModelToJson(this);
    return rt;
  }
}
