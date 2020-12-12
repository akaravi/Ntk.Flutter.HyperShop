import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'exportFileModel.g.dart';

@JsonSerializable(nullable: false)
class ExportFileModel extends ModelBase {
  ExportFileModel({this.fileType,this.recieveMethod,this.rowCount});

  @JsonKey(name:'FileType')
  EnumExportFileType fileType;


  @JsonKey(name:'RecieveMethod')
  EnumExportReceiveMethod recieveMethod;


  @JsonKey(name:'RowCount')
  int rowCount;




  static ExportFileModel fromJsonObject(Object value) => ExportFileModel.fromJson(value);

  factory ExportFileModel.fromJson(Map<String, dynamic> json) =>
      _$ExportFileModelFromJson(json);
  Map<String, dynamic> toJson() => _$ExportFileModelToJson(this);
}

