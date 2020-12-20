import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'errorExcptionResult.g.dart';

@JsonSerializable(nullable: false)
class ErrorExcptionResult extends ModelBase {
  ErrorExcptionResult({this.status,this.errors,this.title,this.traceId,this.errorMessage,this.errorType,this.linkFile,this.isSuccess});

  @JsonKey(name:'Status', nullable: true)
  int status;


  @JsonKey(name:'errors', nullable: true)
  List<String> errors;


  @JsonKey(name:'Title', nullable: true)
  String title;


  @JsonKey(name:'traceId', nullable: true)
  String traceId;


  @JsonKey(name:'ErrorMessage', nullable: true)
  String errorMessage;


  @JsonKey(ignore: true)
  ResultErrorType errorType;


  @JsonKey(name:'LinkFile', nullable: true)
  String linkFile;


  @JsonKey(name:'IsSuccess', nullable: true)
  bool isSuccess;




  static ErrorExcptionResult fromJsonObject(Object value) => ErrorExcptionResult.fromJson(value);

  factory ErrorExcptionResult.fromJson(Map<String, dynamic> json) {
      var rt = _$ErrorExcptionResultFromJson(json);
      rt.errorType = EnumMapper$ResultErrorTypeConverter.fromJson(json['ErrorType']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$ErrorExcptionResultToJson(this);
      rt['ErrorType'] = EnumMapper$ResultErrorTypeConverter.toJson(errorType);
      return rt;
  }
}

