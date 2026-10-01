// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'phone_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneContact _$PhoneContactFromJson(Map json) => PhoneContact(
  id: json['id'] as String,
  phone: json['phone'] as String,
  isMainPhone: json['isMainPhone'] as bool? ?? false,
  label: json['label'] as String?,
);

Map<String, dynamic> _$PhoneContactToJson(PhoneContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'label': instance.label,
      'isMainPhone': instance.isMainPhone,
    };
