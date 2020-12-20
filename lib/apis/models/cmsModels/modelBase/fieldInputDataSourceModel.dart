import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'fieldInputDataSourceModel.g.dart';

@JsonSerializable(nullable: false)
class FieldInputDataSourceModel extends ModelBase {
  FieldInputDataSourceModel({this.inputFixed,this.inputForm,this.inputRequest,this.inputBeforProcess,this.inputControler});

  @JsonKey(name:'InputFixed', nullable: true)
  String inputFixed;


  @JsonKey(name:'InputForm', nullable: true)
  String inputForm;


  @JsonKey(name:'InputRequest', nullable: true)
  String inputRequest;


  @JsonKey(name:'InputBeforProcess', nullable: true)
  String inputBeforProcess;


  @JsonKey(name:'InputControler', nullable: true)
  String inputControler;




  static FieldInputDataSourceModel fromJsonObject(Object value) => FieldInputDataSourceModel.fromJson(value);

  factory FieldInputDataSourceModel.fromJson(Map<String, dynamic> json) {
      var rt = _$FieldInputDataSourceModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$FieldInputDataSourceModelToJson(this);
      return rt;
  }
}

