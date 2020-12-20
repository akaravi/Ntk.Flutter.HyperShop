import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'exportFileModel.g.dart';

@JsonSerializable(nullable: false)
class ExportFileModel extends ModelBase {
  ExportFileModel({this.fileType,this.recieveMethod,this.rowCount});

  @JsonKey(ignore: true)
  EnumExportFileType fileType;


  @JsonKey(ignore: true)
  EnumExportReceiveMethod recieveMethod;


  @JsonKey(name:'RowCount', nullable: true)
  int rowCount;




  static ExportFileModel fromJsonObject(Object value) => ExportFileModel.fromJson(value);

  factory ExportFileModel.fromJson(Map<String, dynamic> json) {
      var rt = _$ExportFileModelFromJson(json);
      rt.fileType = EnumMapper$EnumExportFileTypeConverter.fromJson(json['FileType']);
      rt.recieveMethod = EnumMapper$EnumExportReceiveMethodConverter.fromJson(json['RecieveMethod']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$ExportFileModelToJson(this);
      rt['FileType'] = EnumMapper$EnumExportFileTypeConverter.toJson(fileType);
      rt['RecieveMethod'] = EnumMapper$EnumExportReceiveMethodConverter.toJson(recieveMethod);
      return rt;
  }
}

