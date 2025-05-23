// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$AreaFields = <String, FieldMetadata>{
  'id': FieldMetadata<Area>(
    name: 'id',
    label: '=',
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'bounds': FieldMetadata<Polygon>(
    name: 'bounds',
    label: 'الموقع',
    operators: Operator.spatial,
  ),
  'color': FieldMetadata<Color>(
    name: 'color',
    label: 'اللون',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'photoUpdatedAt': FieldMetadata<DateTime>(
    name: 'photoUpdatedAt',
    label: 'أخر تحديث للصورة',
    operators: Operator.dateComparitive.union({Operator.isNull}),
  ),
  'lastVisit': FieldMetadata<LastRecordedByInfo>(
    name: 'lastVisit',
    label: 'أخر افتقاد',
  ),
  'lastEdit': FieldMetadata<LastRecordedByInfo>(
    name: 'lastEdit',
    label: 'أخر تحديث البيانات',
  ),
  'adminUsers': FieldMetadata<User>(
    name: 'adminUsers',
    label: 'الخدام المسؤلين',
    isOrderable: false,
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Area _$AreaFromJson(Map json) => _Area(
      id: json['id'] as String,
      name: json['name'] as String,
      bounds: polygonFromJson(json['bounds']),
      color: colorFromInt((json['color'] as num?)?.toInt()),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      lastVisit: json['lastVisit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastVisit'] as Map)),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      adminUsers: adminUsersFromJson(json['adminUsers'] as List?),
    );

Map<String, dynamic> _$AreaToJson(_Area instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bounds': polygonToJson(instance.bounds),
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'lastVisit': instance.lastVisit?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'adminUsers': adminUsersToJson(instance.adminUsers),
    };
