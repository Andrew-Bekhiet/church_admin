// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$DistrictFields = <String, FieldMetadata>{
  'id': FieldMetadata<District>(
    name: 'id',
    label: '=',
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistrictImpl _$$DistrictImplFromJson(Map json) => _$DistrictImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$DistrictImplToJson(_$DistrictImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
