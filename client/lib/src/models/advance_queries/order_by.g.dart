// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderBy _$$_OrderByFromJson(Map json) => _$_OrderBy(
      field: json['field'] as String,
      order: $enumDecodeNullable(_$Enum_OrderByEnumMap, json['order']) ??
          Enum_OrderBy.ASC,
    );

Map<String, dynamic> _$$_OrderByToJson(_$_OrderBy instance) =>
    <String, dynamic>{
      'field': instance.field,
      'order': _$Enum_OrderByEnumMap[instance.order]!,
    };

const _$Enum_OrderByEnumMap = {
  Enum_OrderBy.ASC: 'ASC',
  Enum_OrderBy.ASC_NULLS_FIRST: 'ASC_NULLS_FIRST',
  Enum_OrderBy.ASC_NULLS_LAST: 'ASC_NULLS_LAST',
  Enum_OrderBy.DESC: 'DESC',
  Enum_OrderBy.DESC_NULLS_FIRST: 'DESC_NULLS_FIRST',
  Enum_OrderBy.DESC_NULLS_LAST: 'DESC_NULLS_LAST',
  Enum_OrderBy.$unknown: r'$unknown',
};
