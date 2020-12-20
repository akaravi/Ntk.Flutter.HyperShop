import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';


part 'themeConfigLayoutModel.g.dart';

@JsonSerializable(nullable: false)
class ThemeConfigLayoutModel extends ModelBase {
  ThemeConfigLayoutModel({this.layoutName,this.layoutTheme});

  @JsonKey(name:'LayoutName', nullable: true)
  String layoutName;


  @JsonKey(name:'LayoutTheme', nullable: true)
  String layoutTheme;




  static ThemeConfigLayoutModel fromJsonObject(Object value) => ThemeConfigLayoutModel.fromJson(value);

  factory ThemeConfigLayoutModel.fromJson(Map<String, dynamic> json) {
      var rt = _$ThemeConfigLayoutModelFromJson(json);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$ThemeConfigLayoutModelToJson(this);
      return rt;
  }
}

