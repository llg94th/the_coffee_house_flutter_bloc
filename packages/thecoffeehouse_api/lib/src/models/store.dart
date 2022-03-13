import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'store.g.dart';

@JsonSerializable()
class Store extends Equatable {
  const Store(
      {this.id,
      this.name,
      this.distance,
      this.phone,
      this.opening_time,
      this.closing_time,
      this.status,
      this.latitude,
      this.longitude,
      this.images});

  final int? id;
  final String? name;
  final String? distance;
  final String? phone;
  final String? opening_time;
  final String? closing_time;
  final String? status;
  final String? latitude;
  final String? longitude;
  final List<String>? images;

  @override
  List<Object?> get props => [];

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
  Map<String, dynamic> toJson() => _$StoreToJson(this);
}

@JsonSerializable()
class Address {
  final String? street;
  final String? ward;
  final String? district;
  final String? state;
  final String? country;
  final String? full_address;

  const Address(
      {this.street,
      this.ward,
      this.district,
      this.state,
      this.country,
      this.full_address});
}
