// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exportFileModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExportFileModel _$ExportFileModelFromJson(Map<String, dynamic> json) {
  return ExportFileModel(
    fileType: _$enumDecode(_$EnumExportFileTypeEnumMap, json['FileType']),
    recieveMethod:
        _$enumDecode(_$EnumExportReceiveMethodEnumMap, json['RecieveMethod']),
    rowCount: json['RowCount'] as int,
  );
}

Map<String, dynamic> _$ExportFileModelToJson(ExportFileModel instance) =>
    <String, dynamic>{
      'FileType': _$EnumExportFileTypeEnumMap[instance.fileType],
      'RecieveMethod': _$EnumExportReceiveMethodEnumMap[instance.recieveMethod],
      'RowCount': instance.rowCount,
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

const _$EnumExportFileTypeEnumMap = {
  EnumExportFileType.None: 'None',
  EnumExportFileType.Excel: 'Excel',
  EnumExportFileType.PDF: 'PDF',
  EnumExportFileType.Text: 'Text',
};

const _$EnumExportReceiveMethodEnumMap = {
  EnumExportReceiveMethod.Now: 'Now',
  EnumExportReceiveMethod.Email: 'Email',
  EnumExportReceiveMethod.FileManeger: 'FileManeger',
};
