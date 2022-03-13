// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Product',
      json,
      ($checkedConvert) {
        final val = Product(
          id: $checkedConvert('_id', (v) => v as String),
          product_name: $checkedConvert('product_name', (v) => v as String),
          base_price: $checkedConvert('base_price', (v) => v as int),
          price: $checkedConvert('price', (v) => v as int),
          description: $checkedConvert('description', (v) => v as String),
          categ_id: $checkedConvert('categ_id',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
          image: $checkedConvert('image', (v) => v as String),
          product_category_id:
              $checkedConvert('product_category_id', (v) => v as String),
          variants: $checkedConvert(
              'variants',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      ProductVariants.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'id': '_id'},
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      '_id': instance.id,
      'product_name': instance.product_name,
      'base_price': instance.base_price,
      'price': instance.price,
      'description': instance.description,
      'categ_id': instance.categ_id,
      'image': instance.image,
      'product_category_id': instance.product_category_id,
      'variants': instance.variants,
    };

ProductVariants _$ProductVariantsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProductVariants',
      json,
      ($checkedConvert) {
        final val = ProductVariants(
          product_id: $checkedConvert(
              'product_id', (v) => ProductVariants._objectToInt(v)),
          code: $checkedConvert('code', (v) => ProductVariants._objectToInt(v)),
          price: $checkedConvert('price', (v) => v as int?),
          val: $checkedConvert('val', (v) => v as String?),
          localize: $checkedConvert(
              'localize',
              (v) => v == null
                  ? null
                  : Localize.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ProductVariantsToJson(ProductVariants instance) =>
    <String, dynamic>{
      'product_id': ProductVariants._stringFromInt(instance.product_id),
      'code': ProductVariants._stringFromInt(instance.code),
      'price': instance.price,
      'val': instance.val,
      'localize': instance.localize,
    };
