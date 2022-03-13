// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Store _$StoreFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Store',
      json,
      ($checkedConvert) {
        final val = Store(
          id: $checkedConvert('id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          distance: $checkedConvert('distance', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          opening_time: $checkedConvert('opening_time', (v) => v as String?),
          closing_time: $checkedConvert('closing_time', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          latitude: $checkedConvert('latitude', (v) => v as String?),
          longitude: $checkedConvert('longitude', (v) => v as String?),
          images: $checkedConvert('images',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'distance': instance.distance,
      'phone': instance.phone,
      'opening_time': instance.opening_time,
      'closing_time': instance.closing_time,
      'status': instance.status,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'images': instance.images,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Address',
      json,
      ($checkedConvert) {
        final val = Address(
          street: $checkedConvert('street', (v) => v as String?),
          ward: $checkedConvert('ward', (v) => v as String?),
          district: $checkedConvert('district', (v) => v as String?),
          state: $checkedConvert('state', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          full_address: $checkedConvert('full_address', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'street': instance.street,
      'ward': instance.ward,
      'district': instance.district,
      'state': instance.state,
      'country': instance.country,
      'full_address': instance.full_address,
    };
