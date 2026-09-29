// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'phone_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneContact _$PhoneContactFromJson(Map json) => PhoneContact(
  id: json['id'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  isMainPhone: json['isMainPhone'] as bool? ?? false,
  personId: json['personId'] as String?,
  familyId: json['familyId'] as String?,
  personTypeId: json['personTypeId'] as String?,
  personType: json['personType'] == null
      ? null
      : PersonType.fromJson(
          Map<String, Object?>.from(json['personType'] as Map),
        ),
  label: json['label'] as String?,
);

Map<String, dynamic> _$PhoneContactToJson(PhoneContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'personId': instance.personId,
      'familyId': instance.familyId,
      'personTypeId': instance.personTypeId,
      'personType': instance.personType?.toJson(),
      'label': instance.label,
      'phone': instance.phone,
      'isMainPhone': instance.isMainPhone,
    };
