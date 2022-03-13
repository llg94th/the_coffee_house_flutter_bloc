// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'localize.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Localize _$LocalizeFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Localize',
      json,
      ($checkedConvert) {
        final val = Localize(
          en: $checkedConvert('en', (v) => v as String?),
          vi: $checkedConvert('vi', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LocalizeToJson(Localize instance) => <String, dynamic>{
      'en': instance.en,
      'vi': instance.vi,
    };
