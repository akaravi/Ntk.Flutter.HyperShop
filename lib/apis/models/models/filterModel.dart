import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/models/filterDataModel.dart';
import 'package:hypertools/poco/enum_values.dart';

part 'filterModel.g.dart';

@JsonSerializable(nullable: false)
class FilterModel extends ModelBase {
  FilterModel({this.includes,this.includesOtherModule,this.filters,this.count,this.totalRowData,this.skipRowData,this.currentPageNumber,this.rowPerPage,this.sortType,this.sortColumn});

  @JsonKey(name:'Includes', nullable: true)
  List<String> includes;


  @JsonKey(name:'IncludesOtherModule', nullable: true)
  bool includesOtherModule;


  @JsonKey(name:'Filters', nullable: true)
  List<FilterDataModel> filters;


  @JsonKey(name:'Count', nullable: true)
  bool count;


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




  static FilterModel fromJsonObject(Object value) => FilterModel.fromJson(value);

  factory FilterModel.fromJson(Map<String, dynamic> json) {
      var rt = _$FilterModelFromJson(json);
      rt.sortType = EnumMapper$SortTypeConverter.fromJson(json['SortType']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$FilterModelToJson(this);
      rt['SortType'] = EnumMapper$SortTypeConverter.toJson(sortType);
      return rt;
  }
}

