import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'العائلات', allowExtension: true)
class Family extends ViewableWithIDAndImage
    with _$Family
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  final Address? address;
  @override
  final String? notes;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  @override
  @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
  @QueryableField(
      manyToManyRelType: FamiliesFamilies, manyToManyRelSelectField: 'child')
  final List<Family>? children;
  @override
  @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
  @QueryableField(
      manyToManyRelType: FamiliesFamilies, manyToManyRelSelectField: 'parent')
  final List<Family>? parents;
  @override
  final LastRecordedByInfo? lastEdit;

  const Family({
    required this.id,
    required this.name,
    this.address,
    this.notes,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.children,
    this.parents,
    this.lastEdit,
  });

  factory Family.fromJson(Map<String, Object?> json) => _$FamilyFromJson(json);

  @override
  Json toJson() => _$FamilyToJson(this);

  Point? get geolocation => address?.geolocation;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('families', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().family.name;

  Input_FamiliesInsertInput toInsertInput() => Input_FamiliesInsertInput(
        name: name,
        address: address != null
            ? Input_AddressesObjRelInsertInput(
                data: address!.copyWith(family: null).toInsertInput(),
              )
            : null,
        notes: notes,
        color: colorToInt(color),
      );

  Input_FamiliesSetInput toUpdateInput(Family oldFamily) =>
      Input_FamiliesSetInput(
        name: name != oldFamily.name ? name : null,
        notes: notes != oldFamily.notes ? notes : null,
        color: color != oldFamily.color ? colorToInt(color) : null,
      );
}

class FamilyFields extends _FamilyFields {
  FamilyFields();

  @override
  FieldMetadata<Point> get geolocation =>
      address.redirectTo(AddressFields().geolocation, isExpandable: false);

  FieldMetadata<Area> get area =>
      address.redirectTo(AddressFields().area, isExpandable: false);

  FieldMetadata<Street> get street =>
      address.redirectTo(AddressFields().street, isExpandable: false);

  FieldMetadata<District> get district =>
      address.redirectTo(AddressFields().district, isExpandable: false);

  @override
  FieldMetadata<Family> get children =>
      childrenRel.redirectTo(FamiliesFamiliesFields().child,
          label: childrenRel.label, isExpandable: false);
  @override
  FieldMetadata<Family> get parents =>
      parentsRel.redirectTo(FamiliesFamiliesFields().parent,
          label: parentsRel.label, isExpandable: false);

  @override
  List<FieldMetadata<Object>> get allFields => [
        ...super.allFields,
        area,
        street,
        district,
      ];

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName {
    return {
      ...super.allFieldsByName,
      area.name: area,
      street.name: street,
      district.name: district,
    };
  }
}

List<Family>? familyChildrenFromJson(List? data) =>
    data?.map((e) => Family.fromJson(e['child'])).toList();
List<Json>? familyChildrenToJson(List<Family>? hobbies) =>
    hobbies?.map((e) => {'child': e.toJson()}).toList();

List<Family>? familyParentsFromJson(List? data) =>
    data?.map((e) => Family.fromJson(e['parent'])).toList();
List<Json>? familyParentsToJson(List<Family>? hobbies) =>
    hobbies?.map((e) => {'parent': e.toJson()}).toList();
