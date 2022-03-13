import 'package:json_annotation/json_annotation.dart';
import 'package:thecoffeehouse_api/src/models/product.dart';

part 'product_respone.g.dart';

@JsonSerializable()
class ProductRespone {
  ProductRespone({required this.data});

  final List<Product> data;

  factory ProductRespone.fromJson(Map<String, dynamic> json) =>
      _$ProductResponeFromJson(json);
  Map<String, dynamic> toJson() => _$ProductResponeToJson(this);
}
