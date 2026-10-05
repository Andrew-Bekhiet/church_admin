import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'المناطق', extensible: true)
class Area extends ViewableWithIDAndImage
    with _$Area
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
  @QueryableField(label: 'الموقع')
  final Polygon? bounds;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @override
  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @override
  @QueryableField(label: 'أخر افتقاد')
  final LastRecordedByInfo? lastVisit;

  @override
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @override
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  @QueryableField.manyToMany(through: AdminOnData)
  final List<User>? adminUsers;

  @override
  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('areas', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().area.name;

  const Area({
    required this.id,
    required this.name,
    this.userCanEdit = false,
    this.bounds,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.lastVisit,
    this.lastEdit,
    this.adminUsers,
  });

  factory Area.fromJson(Map<String, Object?> json) => _$AreaFromJson(json);

  @override
  Json toJson() => _$AreaToJson(this);
}

class AreaFields extends _AreaFields {
  static final AreaFields _instance = AreaFields._();

  FieldMetadata<AreasStreets> get streetsRel => FieldMetadata<AreasStreets>(
    parentType: Area,
    name: 'streets',
    label: 'الشوارع',
    isCodeOnly: true,
    isOrderable: false,
    getValue: (obj) => obj is Area ? [] : null,
  );

  FieldMetadata<Street> get streets => streetsRel.redirectTo(
    AreasStreetsFields().street,
    isExpandable: false,
    isOrderable: false,
  );

  @override
  List<FieldMetadata<Object>> get allFields => [...super.allFields, streets];

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName => {
    ...super.allFieldsByName,
    streets.name: streets,
  };

  factory AreaFields() => _instance;

  AreaFields._();
}

List<User>? adminUsersFromJson(List? data) =>
    data?.map((e) => User.fromJson(e['user'])).toList();
List<Json>? adminUsersToJson(List<User>? users) =>
    users?.map((e) => {'user': e.toJson()}).toList();
