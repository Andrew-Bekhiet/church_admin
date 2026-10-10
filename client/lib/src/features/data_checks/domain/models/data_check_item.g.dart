// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'data_check_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataCheckItem _$DataCheckItemFromJson(Map json) => DataCheckItem(
  group: $enumDecode(
    _$DataCheckGroupEnumMap,
    json['group'],
    unknownValue: DataCheckGroup.other,
  ),
  check: json['check'] as String,
  passed: json['passed'] as bool,
);

Map<String, dynamic> _$DataCheckItemToJson(DataCheckItem instance) =>
    <String, dynamic>{
      'group': _$DataCheckGroupEnumMap[instance.group]!,
      'check': instance.check,
      'passed': instance.passed,
    };

const _$DataCheckGroupEnumMap = {
  DataCheckGroup.family: 'family',
  DataCheckGroup.address: 'address',
  DataCheckGroup.other: 'other',
};
