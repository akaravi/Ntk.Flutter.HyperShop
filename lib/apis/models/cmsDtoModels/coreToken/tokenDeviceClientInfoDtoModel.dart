import 'package:hypertools/poco/modelBase.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

part 'tokenDeviceClientInfoDtoModel.g.dart';

@JsonSerializable(nullable: false)
class TokenDeviceClientInfoDtoModel extends ModelBase {
  TokenDeviceClientInfoDtoModel({this.securityKey,this.notificationId,this.clientMACAddress,this.oSType,this.deviceType,this.packageName});

  @JsonKey(name:'SecurityKey', nullable: true)
  String securityKey;


  @JsonKey(name:'NotificationId', nullable: true)
  String notificationId;


  @JsonKey(name:'ClientMACAddress', nullable: true)
  String clientMACAddress;


  @JsonKey(ignore: true)
  EnumOperatingSystemType oSType;


  @JsonKey(ignore: true)
  EnumDeviceType deviceType;


  @JsonKey(name:'PackageName', nullable: true)
  String packageName;




  static TokenDeviceClientInfoDtoModel fromJsonObject(Object value) => TokenDeviceClientInfoDtoModel.fromJson(value);

  factory TokenDeviceClientInfoDtoModel.fromJson(Map<String, dynamic> json) {
      var rt = _$TokenDeviceClientInfoDtoModelFromJson(json);
      rt.oSType = EnumMapper$EnumOperatingSystemTypeConverter.fromJson(json['OSType']);
      rt.deviceType = EnumMapper$EnumDeviceTypeConverter.fromJson(json['DeviceType']);
      return rt;
  }
  Map<String, dynamic> toJson() {
      var rt = _$TokenDeviceClientInfoDtoModelToJson(this);
      rt['OSType'] = EnumMapper$EnumOperatingSystemTypeConverter.toJson(oSType);
      rt['DeviceType'] = EnumMapper$EnumDeviceTypeConverter.toJson(deviceType);
      return rt;
  }
}

