import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'tokenDeviceClientInfoDtoModel.g.dart';

@JsonSerializable(nullable: false)
class TokenDeviceClientInfoDtoModel extends ModelBase {
  TokenDeviceClientInfoDtoModel({this.securityKey,this.notificationId,this.clientMACAddress,this.oSType,this.deviceType,this.packageName});

  @JsonKey(name:'SecurityKey')
  String securityKey;


  @JsonKey(name:'NotificationId')
  String notificationId;


  @JsonKey(name:'ClientMACAddress')
  String clientMACAddress;


  @JsonKey(name:'OSType')
  EnumOperatingSystemType oSType;


  @JsonKey(name:'DeviceType')
  EnumDeviceType deviceType;


  @JsonKey(name:'PackageName')
  String packageName;




  static TokenDeviceClientInfoDtoModel fromJsonObject(Object value) => TokenDeviceClientInfoDtoModel.fromJson(value);

  factory TokenDeviceClientInfoDtoModel.fromJson(Map<String, dynamic> json) =>
      _$TokenDeviceClientInfoDtoModelFromJson(json);
  Map<String, dynamic> toJson() => _$TokenDeviceClientInfoDtoModelToJson(this);
}

