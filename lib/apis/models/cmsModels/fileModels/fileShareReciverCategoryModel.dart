import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'fileShareReciverCategoryModel.g.dart';

@JsonSerializable(nullable: false)
class FileShareReciverCategoryModel extends ModelBase {
  FileShareReciverCategoryModel({this.fromDate,this.linkShareServerCategoryId,this.linkShareReciverCategoryId,this.expireDate});

  @JsonKey(name:'FromDate', nullable: true)
  DateTime fromDate;


  @JsonKey(name:'LinkShareServerCategoryId', nullable: true)
  int linkShareServerCategoryId;


  @JsonKey(name:'LinkShareReciverCategoryId', nullable: true)
  int linkShareReciverCategoryId;


  @JsonKey(name:'ExpireDate', nullable: true)
  DateTime expireDate;




  static FileShareReciverCategoryModel fromJsonObject(Object value) => FileShareReciverCategoryModel.fromJson(value);

  factory FileShareReciverCategoryModel.fromJson(Map<String, dynamic> json) {
      var rt = _$FileShareReciverCategoryModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$FileShareReciverCategoryModelToJson(this);
      return rt;
  }
}

