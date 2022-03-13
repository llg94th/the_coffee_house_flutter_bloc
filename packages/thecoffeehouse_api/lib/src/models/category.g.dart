// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Category',
      json,
      ($checkedConvert) {
        final val = Category(
          id: $checkedConvert('id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          image: $checkedConvert('image', (v) => v as String?),
          thumbnail_web: $checkedConvert('thumbnail-web', (v) => v as String?),
          thumbnail_app: $checkedConvert('thumbnail-app', (v) => v as String?),
          localize: $checkedConvert(
              'localize', (v) => Localize.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'thumbnail_web': 'thumbnail-web',
        'thumbnail_app': 'thumbnail-app'
      },
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'thumbnail-web': instance.thumbnail_web,
      'thumbnail-app': instance.thumbnail_app,
      'localize': instance.localize,
    };
