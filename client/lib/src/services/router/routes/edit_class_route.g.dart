// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_class_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditClassExtra _$EditClassExtraFromJson(Map json) => EditClassExtra(
      $class: json[r'$class'] == null
          ? null
          : Class.fromJson(Map<String, Object?>.from(json[r'$class'] as Map)),
      service: json['service'] == null
          ? null
          : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
    );

Map<String, dynamic> _$EditClassExtraToJson(EditClassExtra instance) =>
    <String, dynamic>{
      r'$class': instance.$class?.toJson(),
      'service': instance.service?.toJson(),
    };
