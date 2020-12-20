// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiFilterModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiFilterModel _$ApiFilterModelFromJson(Map<String, dynamic> json) {
  return ApiFilterModel(
    exportFile: json['ExportFile'] == null
        ? null
        : ExportFileModel.fromJson(json['ExportFile'] as Map<String, dynamic>),
    filters: (json['Filters'] as List)
        ?.map((e) => e == null
            ? null
            : ApiFilterDataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    accessLoad: json['AccessLoad'] as bool,
    countLoad: json['CountLoad'] as bool,
    totalRowData: json['TotalRowData'] as int,
    skipRowData: json['SkipRowData'] as int,
    currentPageNumber: json['CurrentPageNumber'] as int,
    rowPerPage: json['RowPerPage'] as int,
    sortColumn: json['SortColumn'] as String,
  );
}

Map<String, dynamic> _$ApiFilterModelToJson(ApiFilterModel instance) =>
    <String, dynamic>{
      'ExportFile': instance.exportFile,
      'Filters': instance.filters,
      'AccessLoad': instance.accessLoad,
      'CountLoad': instance.countLoad,
      'TotalRowData': instance.totalRowData,
      'SkipRowData': instance.skipRowData,
      'CurrentPageNumber': instance.currentPageNumber,
      'RowPerPage': instance.rowPerPage,
      'SortColumn': instance.sortColumn,
    };
