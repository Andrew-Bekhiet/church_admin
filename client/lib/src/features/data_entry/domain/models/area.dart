import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'المناطق', allowExtension: true)
class Area extends ViewableWithIDAndImage
    with _$Area
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson)
  final Polygon? bounds;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  @override
  final LastRecordedByInfo? lastVisit;
  @override
  final LastRecordedByInfo? lastEdit;
  @override
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  @QueryableField(manyToManyRelType: AdminOnData)
  final List<User>? adminUsers;

  const Area({
    required this.id,
    required this.name,
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

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('areas', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().area.name;
}

class AreaFields extends _AreaFields {
  static final AreaFields _instance = AreaFields._();

  factory AreaFields() => _instance;

  AreaFields._();

  FieldMetadata<AreasStreets> get streetsRel =>
      const FieldMetadata<AreasStreets>(
        parentType: Area,
        name: 'streets',
        label: 'الشوارع',
        isCodeOnly: true,
        isOrderable: false,
      );

  FieldMetadata<Street> get streets =>
      streetsRel.redirectTo(AreasStreetsFields().street, isExpandable: false);

  @override
  FieldMetadata<User> get adminUsers =>
      adminUsersRel.redirectTo(AdminOnDataFields().user,
          label: adminUsersRel.label, isExpandable: false);

  @override
  List<FieldMetadata<Object>> get allFields => [...super.allFields, streets];

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName => {
        ...super.allFieldsByName,
        streets.name: streets,
      };
}

List<User>? adminUsersFromJson(List? data) =>
    data?.map((e) => User.fromJson(e['user'])).toList();
List<Json>? adminUsersToJson(List<User>? users) =>
    users?.map((e) => {'user': e.toJson()}).toList();
