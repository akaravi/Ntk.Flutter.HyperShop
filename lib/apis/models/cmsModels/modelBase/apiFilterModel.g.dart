// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiFilterModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiFilterModel _$ApiFilterModelFromJson(Map<String, dynamic> json) {
  return ApiFilterModel(
    exportFile:
        ExportFileModel.fromJson(json['ExportFile'] as Map<String, dynamic>),
    filters: (json['Filters'] as List)
        .map((e) => ApiFilterDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    accessLoad: json['AccessLoad'] as bool,
    countLoad: json['CountLoad'] as bool,
    totalRowData: json['TotalRowData'] as int,
    skipRowData: json['SkipRowData'] as int,
    currentPageNumber: json['CurrentPageNumber'] as int,
    rowPerPage: json['RowPerPage'] as int,
    sortType: _$enumDecode(_$SortTypeEnumMap, json['SortType']),
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
      'SortType': _$SortTypeEnumMap[instance.sortType],
      'SortColumn': instance.sortColumn,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

const _$SortTypeEnumMap = {
  SortType.Descending: 'Descending',
  SortType.Ascending: 'Ascending',
  SortType.Random: 'Random',
};
