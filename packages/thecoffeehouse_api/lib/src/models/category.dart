import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:thecoffeehouse_api/src/models/localize.dart';

part 'category.g.dart';

@JsonSerializable()
class Category extends Equatable {
  Category(
      {this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.thumbnail_web,
      required this.thumbnail_app,
      required this.localize});

  final int? id;
  final String? name;
  final String? description;
  final String? image;
  @JsonKey(name: 'thumbnail-web')
  final String? thumbnail_web;
  @JsonKey(name: 'thumbnail-app')
  final String? thumbnail_app;
  final Localize localize;

  @override
  List<Object?> get props => [id];
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
