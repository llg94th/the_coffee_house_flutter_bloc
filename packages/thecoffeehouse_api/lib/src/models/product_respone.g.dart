// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'product_respone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRespone _$ProductResponeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProductRespone',
      json,
      ($checkedConvert) {
        final val = ProductRespone(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => Product.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ProductResponeToJson(ProductRespone instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
