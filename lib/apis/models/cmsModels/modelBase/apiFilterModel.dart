import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/cmsModels/modelBase/exportFileModel.dart';
import 'package:hypertools/apis/models/cmsModels/modelBase/apiFilterDataModel.dart';
import 'package:hypertools/poco/enum_values.dart';

part 'apiFilterModel.g.dart';

@JsonSerializable(nullable: false)
class ApiFilterModel extends ModelBase {
  ApiFilterModel({this.exportFile,this.filters,this.accessLoad,this.countLoad,this.totalRowData,this.skipRowData,this.currentPageNumber,this.rowPerPage,this.sortType,this.sortColumn});

  @JsonKey(name:'ExportFile', nullable: true)
  ExportFileModel exportFile;


  @JsonKey(name:'Filters', nullable: true)
  List<ApiFilterDataModel> filters;


  @JsonKey(name:'AccessLoad', nullable: true)
  bool accessLoad;


  @JsonKey(name:'CountLoad', nullable: true)
  bool countLoad;


  @JsonKey(name:'TotalRowData', nullable: true)
  int totalRowData;


  @JsonKey(name:'SkipRowData', nullable: true)
  int skipRowData;


  @JsonKey(name:'CurrentPageNumber', nullable: true)
  int currentPageNumber;


  @JsonKey(name:'RowPerPage', nullable: true)
  int rowPerPage;


  @JsonKey(ignore: true)
  SortType sortType;


  @JsonKey(name:'SortColumn', nullable: true)
  String sortColumn;




  static ApiFilterModel fromJsonObject(Object value) => ApiFilterModel.fromJson(value);

  factory ApiFilterModel.fromJson(Map<String, dynamic> json) {
      var rt = _$ApiFilterModelFromJson(json);
      rt.sortType = EnumMapper$SortTypeConverter.fromJson(json['SortType']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$ApiFilterModelToJson(this);
      rt['SortType'] = EnumMapper$SortTypeConverter.toJson(sortType);
      return rt;
  }
}

