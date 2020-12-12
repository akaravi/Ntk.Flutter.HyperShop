import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/cmsModels/modelBase/exportFileModel.dart';
import 'package:hypertools/apis/models/cmsModels/modelBase/apiFilterDataModel.dart';
import 'package:hypertools/poco/enum_values.dart';

part 'apiFilterModel.g.dart';

@JsonSerializable(nullable: false)
class ApiFilterModel extends ModelBase {
  ApiFilterModel({this.exportFile,this.filters,this.accessLoad,this.countLoad,this.totalRowData,this.skipRowData,this.currentPageNumber,this.rowPerPage,this.sortType,this.sortColumn});

  @JsonKey(name:'ExportFile')
  ExportFileModel exportFile;


  @JsonKey(name:'Filters')
  List<ApiFilterDataModel> filters;


  @JsonKey(name:'AccessLoad')
  bool accessLoad;


  @JsonKey(name:'CountLoad')
  bool countLoad;


  @JsonKey(name:'TotalRowData')
  int totalRowData;


  @JsonKey(name:'SkipRowData')
  int skipRowData;


  @JsonKey(name:'CurrentPageNumber')
  int currentPageNumber;


  @JsonKey(name:'RowPerPage')
  int rowPerPage;


  @JsonKey(name:'SortType')
  SortType sortType;


  @JsonKey(name:'SortColumn')
  String sortColumn;




  static ApiFilterModel fromJsonObject(Object value) => ApiFilterModel.fromJson(value);

  factory ApiFilterModel.fromJson(Map<String, dynamic> json) =>
      _$ApiFilterModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiFilterModelToJson(this);
}

