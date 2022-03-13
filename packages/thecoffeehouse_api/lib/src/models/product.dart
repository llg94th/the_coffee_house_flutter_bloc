import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:thecoffeehouse_api/src/models/localize.dart';

part 'product.g.dart';

@JsonSerializable()
class Product extends Equatable {
  const Product({
    required this.id,
    required this.product_name,
    required this.base_price,
    required this.price,
    required this.description,
    required this.categ_id,
    required this.image,
    required this.product_category_id,
    required this.variants,
  });

  @JsonKey(name: '_id')
  final String id;
  final String product_name;
  final int base_price;
  final int price;
  final String description;
  final List<int> categ_id;
  final String image;
  final String product_category_id;
  final List<ProductVariants> variants;
  @override
  List<Object?> get props => [id];

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class ProductVariants {
  const ProductVariants(
      {required this.product_id,
      required this.code,
      required this.price,
      required this.val,
      required this.localize});

  @JsonKey(fromJson: _objectToInt, toJson: _stringFromInt)
  final int? product_id;
  @JsonKey(fromJson: _objectToInt, toJson: _stringFromInt)
  final int? code;
  final int? price;
  final String? val;
  final Localize? localize;
  factory ProductVariants.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantsFromJson(json);
  Map<String, dynamic> toJson() => _$ProductVariantsToJson(this);
  static int _objectToInt(Object? number) =>
      number == null ? 0 : int.parse(number.toString());
  static String _stringFromInt(int? number) => number.toString();
}
