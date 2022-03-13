import 'package:json_annotation/json_annotation.dart';

part 'localize.g.dart';

@JsonSerializable()
class Localize {
  const Localize({required this.en, required this.vi});

  final String? en;
  final String? vi;

  factory Localize.fromJson(Map<String, dynamic> json) =>
      _$LocalizeFromJson(json);
  Map<String, dynamic> toJson() => _$LocalizeToJson(this);
}
