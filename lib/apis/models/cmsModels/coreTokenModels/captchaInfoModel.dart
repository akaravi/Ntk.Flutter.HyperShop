import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

part 'captchaInfoModel.g.dart';

@JsonSerializable(nullable: false)
class CaptchaInfoModel extends ModelBase {
  CaptchaInfoModel({this.expire, this.key, this.image});

  @JsonKey(name: 'Expire')
  DateTime expire;

  @JsonKey(name: 'Key')
  String key;

  @JsonKey(name: 'Image')
  String image;

  static CaptchaInfoModel fromJsonObject(Object value) =>
      CaptchaInfoModel.fromJson(value);

  factory CaptchaInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CaptchaInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$CaptchaInfoModelToJson(this);
}
