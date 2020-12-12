import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'errorExcptionResult.g.dart';

@JsonSerializable(nullable: false)
class ErrorExcptionResult extends ModelBase {
  ErrorExcptionResult({this.status,this.errors,this.title,this.traceId,this.errorMessage,this.errorType,this.linkFile,this.isSuccess});

  @JsonKey(name:'Status')
  int status;


  @JsonKey(name:'errors')
  List<String> errors;


  @JsonKey(name:'Title')
  String title;


  @JsonKey(name:'traceId')
  String traceId;


  @JsonKey(name:'ErrorMessage')
  String errorMessage;


  @JsonKey(name:'ErrorType')
  ResultErrorType errorType;


  @JsonKey(name:'LinkFile')
  String linkFile;


  @JsonKey(name:'IsSuccess')
  bool isSuccess;




  static ErrorExcptionResult fromJsonObject(Object value) => ErrorExcptionResult.fromJson(value);

  factory ErrorExcptionResult.fromJson(Map<String, dynamic> json) =>
      _$ErrorExcptionResultFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorExcptionResultToJson(this);
}

