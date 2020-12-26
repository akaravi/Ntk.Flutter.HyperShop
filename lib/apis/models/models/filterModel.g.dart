// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filterModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return FilterModel(
    includes: (json['Includes'] as List)?.map((e) => e as String)?.toList(),
    includesOtherModule: json['IncludesOtherModule'] as bool,
    filters: (json['Filters'] as List)
        ?.map((e) => e == null
            ? null
            : FilterDataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    count: json['Count'] as bool,
    totalRowData: json['TotalRowData'] as int,
    skipRowData: json['SkipRowData'] as int,
    currentPageNumber: json['CurrentPageNumber'] as int,
    rowPerPage: json['RowPerPage'] as int,
    sortColumn: json['SortColumn'] as String,
  );
}

Map<String, dynamic> _$FilterModelToJson(FilterModel instance) =>
    <String, dynamic>{
      'Includes': instance.includes,
      'IncludesOtherModule': instance.includesOtherModule,
      'Filters': instance.filters == null
          ? null
          : instance.filters
              .map((e) => e == null ? null : e.toJson())
              ?.toList(),
      'Count': instance.count,
      'TotalRowData': instance.totalRowData,
      'SkipRowData': instance.skipRowData,
      'CurrentPageNumber': instance.currentPageNumber,
      'RowPerPage': instance.rowPerPage,
      'SortColumn': instance.sortColumn,
    };
