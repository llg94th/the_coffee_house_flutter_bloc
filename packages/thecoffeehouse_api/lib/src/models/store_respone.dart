import 'package:json_annotation/json_annotation.dart';
import 'package:thecoffeehouse_api/src/models/store.dart';

part 'store_respone.g.dart';

@JsonSerializable()
class StoreRespone {
  const StoreRespone(this.states);

  final List<State>? states;

  factory StoreRespone.fromJson(Map<String, dynamic> json) =>
      _$StoreResponeFromJson(json);
  Map<String, dynamic> toJson() => _$StoreResponeToJson(this);
}

@JsonSerializable()
class State {
  const State({this.id, this.count, this.name, required this.districts});

  final int? id;
  final int? count;
  final String? name;
  final List<District>? districts;
  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
  Map<String, dynamic> toJson() => _$StateToJson(this);
}

@JsonSerializable()
class District {
  const District(
      {this.id, this.count, this.name, this.state_name, this.stores});

  final int? id;
  final int? count;
  final String? name;
  final String? state_name;
  final List<Store>? stores;
  factory District.fromJson(Map<String, dynamic> json) =>
      _$DistrictFromJson(json);
  Map<String, dynamic> toJson() => _$DistrictToJson(this);
}
