// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'data_check_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataCheckDetail _$DataCheckDetailFromJson(Map json) => DataCheckDetail(
  group: $enumDecode(
    _$DataCheckGroupEnumMap,
    json['group'],
    unknownValue: DataCheckGroup.other,
  ),
  check: $enumDecode(
    _$DataCheckRuleEnumMap,
    json['check'],
    unknownValue: DataCheckRule.unknown,
  ),
  passed: json['passed'] as bool,
);

Map<String, dynamic> _$DataCheckDetailToJson(DataCheckDetail instance) =>
    <String, dynamic>{
      'group': _$DataCheckGroupEnumMap[instance.group]!,
      'check': _$DataCheckRuleEnumMap[instance.check]!,
      'passed': instance.passed,
    };

const _$DataCheckGroupEnumMap = {
  DataCheckGroup.family: 'family',
  DataCheckGroup.address: 'address',
  DataCheckGroup.other: 'other',
};

const _$DataCheckRuleEnumMap = {
  DataCheckRule.hasFamilyAdmin: 'has_family_admin',
  DataCheckRule.hasNonAdminMember: 'has_non_admin_member',
  DataCheckRule.hasAddress: 'has_address',
  DataCheckRule.hasArea: 'has_area',
  DataCheckRule.hasStreet: 'has_street',
  DataCheckRule.hasSpecialLandmark: 'has_special_landmark',
  DataCheckRule.specialLandmarkIsShort: 'special_landmark_is_short',
  DataCheckRule.specialLandmarkIsNotAFullAddress:
      'special_landmark_is_not_a_full_address',
  DataCheckRule.unknown: 'unknown',
};
