import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/apis/models/cmsModels/modelBase/fieldInputDataSourceModel.dart';
import 'package:hypertools/apis/models/cmsModels/modelBase/fieldInfoModel.dart';

part 'getPropertiesInfoModel.g.dart';

@JsonSerializable(nullable: false)
class GetPropertiesInfoModel extends ModelBase {
  GetPropertiesInfoModel({this.fieldDataSource,this.fieldDataSourceExpression,this.fieldName,this.fieldType,this.fieldTypeClass,this.fieldTitle,this.fieldDescription,this.fieldScriptDescription,this.fieldDefaultValue,this.fieldValue,this.fieldTypeFullName,this.fieldsInfo});

  @JsonKey(name:'FieldDataSource', nullable: true)
  FieldInputDataSourceModel fieldDataSource;


  @JsonKey(name:'FieldDataSourceExpression', nullable: true)
  String fieldDataSourceExpression;


  @JsonKey(name:'FieldName', nullable: true)
  String fieldName;


  @JsonKey(name:'FieldType', nullable: true)
  String fieldType;


  @JsonKey(name:'FieldTypeClass', nullable: true)
  String fieldTypeClass;


  @JsonKey(name:'FieldTitle', nullable: true)
  String fieldTitle;


  @JsonKey(name:'FieldDescription', nullable: true)
  String fieldDescription;


  @JsonKey(name:'FieldScriptDescription', nullable: true)
  String fieldScriptDescription;


  @JsonKey(name:'FieldDefaultValue', nullable: true)
  String fieldDefaultValue;


  @JsonKey(name:'FieldValue', nullable: true)
  String fieldValue;


  @JsonKey(name:'FieldTypeFullName', nullable: true)
  String fieldTypeFullName;


  @JsonKey(name:'fieldsInfo', nullable: true)
  List<FieldInfoModel> fieldsInfo;




  static GetPropertiesInfoModel fromJsonObject(Object value) => GetPropertiesInfoModel.fromJson(value);

  factory GetPropertiesInfoModel.fromJson(Map<String, dynamic> json) {
      var rt = _$GetPropertiesInfoModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$GetPropertiesInfoModelToJson(this);
      return rt;
  }
}

