import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'fileShareServerCategoryModel.g.dart';

@JsonSerializable(nullable: false)
class FileShareServerCategoryModel extends ModelBase {
  FileShareServerCategoryModel({this.title,this.description,this.linkShareMainAdminSettingId,this.linkServerCategoryId,this.expireDate});

  @JsonKey(name:'Title', nullable: true)
  String title;


  @JsonKey(name:'Description', nullable: true)
  String description;


  @JsonKey(name:'LinkShareMainAdminSettingId', nullable: true)
  int linkShareMainAdminSettingId;


  @JsonKey(name:'LinkServerCategoryId', nullable: true)
  int linkServerCategoryId;


  @JsonKey(name:'ExpireDate', nullable: true)
  DateTime expireDate;




  static FileShareServerCategoryModel fromJsonObject(Object value) => FileShareServerCategoryModel.fromJson(value);

  factory FileShareServerCategoryModel.fromJson(Map<String, dynamic> json) {
      var rt = _$FileShareServerCategoryModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$FileShareServerCategoryModelToJson(this);
      return rt;
  }
}

