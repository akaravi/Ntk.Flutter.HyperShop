import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

part 'captchaInfoModel.g.dart';

@JsonSerializable(nullable: false)
class CaptchaInfoModel extends ModelBase {
  CaptchaInfoModel({this.expire, this.key, this.image});

  @JsonKey(name: 'Expire', nullable: true)
  DateTime expire;

  @JsonKey(name: 'Key', nullable: true)
  String key;

  @JsonKey(name: 'Image', nullable: true)
  String image;

  static CaptchaInfoModel fromJsonObject(Object value) =>
      CaptchaInfoModel.fromJson(value);

  factory CaptchaInfoModel.fromJson(Map<String, dynamic> json) {
    var rt = _$CaptchaInfoModelFromJson(json);
    return rt;
  }
  Map<String, dynamic> toJson() {
    var rt = _$CaptchaInfoModelToJson(this);
    return rt;
  }
}
