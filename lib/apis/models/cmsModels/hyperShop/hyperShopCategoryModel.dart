import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'hyperShopCategoryModel.g.dart';

@JsonSerializable(nullable: false)
class HyperShopCategoryModel extends ModelBase {
  HyperShopCategoryModel({this.parentCode,this.code,this.name,this.image,this.memo,this.rowId});

  @JsonKey(name:'ParentCode', nullable: true)
  String parentCode;


  @JsonKey(name:'Code', nullable: true)
  String code;


  @JsonKey(name:'Name', nullable: true)
  String name;


  @JsonKey(name:'Image', nullable: true)
  String image;


  @JsonKey(name:'Memo', nullable: true)
  String memo;


  @JsonKey(name:'rowId', nullable: true)
  int rowId;




  static HyperShopCategoryModel fromJsonObject(Object value) => HyperShopCategoryModel.fromJson(value);

  factory HyperShopCategoryModel.fromJson(Map<String, dynamic> json) {
      var rt = _$HyperShopCategoryModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$HyperShopCategoryModelToJson(this);
      return rt;
  }
}

