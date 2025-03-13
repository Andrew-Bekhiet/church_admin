import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
@TypeMetadata()
class Family extends ViewableWithIDAndImage
    with _$Family
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$FamilyFields;

  static final QueryableType<Family> queryableType = QueryableType<Family>(
    name: 'Family',
    label: 'العائلات',
    fieldsMetadata: fieldsMetadata,
    fromJson: Family.fromJson,
  );

  factory Family({
    required String id,
    required String name,
    Address? address,
    String? notes,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
    List<Family>? children,
    @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
    List<Family>? parents,
    LastRecordedByInfo? lastEdit,
  }) = _Family;
  Family._() : super();

  factory Family.fromJson(Map<String, Object?> json) => _$FamilyFromJson(json);

  Point? get geolocation => address?.geolocation;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('families', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => Family.queryableType.name;

  Input_FamiliesInsertInput toInsertInput() => Input_FamiliesInsertInput(
    name: name,
    address:
        address != null
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

List<Family>? familyChildrenFromJson(List? data) =>
    data?.map((e) => Family.fromJson(e['child'])).toList();
List<Json>? familyChildrenToJson(List<Family>? hobbies) =>
    hobbies?.map((e) => {'child': e.toJson()}).toList();

List<Family>? familyParentsFromJson(List? data) =>
    data?.map((e) => Family.fromJson(e['parent'])).toList();
List<Json>? familyParentsToJson(List<Family>? hobbies) =>
    hobbies?.map((e) => {'parent': e.toJson()}).toList();
