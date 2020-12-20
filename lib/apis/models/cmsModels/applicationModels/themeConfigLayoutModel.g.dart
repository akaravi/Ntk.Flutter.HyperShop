// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'themeConfigLayoutModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThemeConfigLayoutModel _$ThemeConfigLayoutModelFromJson(
    Map<String, dynamic> json) {
  return ThemeConfigLayoutModel(
    layoutName: json['LayoutName'] as String,
    layoutTheme: json['LayoutTheme'] as String,
  );
}

Map<String, dynamic> _$ThemeConfigLayoutModelToJson(
        ThemeConfigLayoutModel instance) =>
    <String, dynamic>{
      'LayoutName': instance.layoutName,
      'LayoutTheme': instance.layoutTheme,
    };
