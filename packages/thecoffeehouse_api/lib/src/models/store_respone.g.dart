// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'store_respone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreRespone _$StoreResponeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'StoreRespone',
      json,
      ($checkedConvert) {
        final val = StoreRespone(
          $checkedConvert(
              'states',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => State.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$StoreResponeToJson(StoreRespone instance) =>
    <String, dynamic>{
      'states': instance.states,
    };

State _$StateFromJson(Map<String, dynamic> json) => $checkedCreate(
      'State',
      json,
      ($checkedConvert) {
        final val = State(
          id: $checkedConvert('id', (v) => v as int?),
          count: $checkedConvert('count', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          districts: $checkedConvert(
              'districts',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => District.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$StateToJson(State instance) => <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'name': instance.name,
      'districts': instance.districts,
    };

District _$DistrictFromJson(Map<String, dynamic> json) => $checkedCreate(
      'District',
      json,
      ($checkedConvert) {
        final val = District(
          id: $checkedConvert('id', (v) => v as int?),
          count: $checkedConvert('count', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          state_name: $checkedConvert('state_name', (v) => v as String?),
          stores: $checkedConvert(
              'stores',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Store.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$DistrictToJson(District instance) => <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'name': instance.name,
      'state_name': instance.state_name,
      'stores': instance.stores,
    };
