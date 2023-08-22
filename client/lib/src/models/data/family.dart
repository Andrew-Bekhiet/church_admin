// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
class Family extends ViewableWithIDAndImage with _$Family implements ToJson {
  static final fields = _$$_FamilyFieldMap.keys.toList();

  @JsonSerializable(createFieldMap: true)
  factory Family({
    required String id,
    required String name,
    String? address,
    @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
    String? notes,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
    List<Area>? areas,
    List<Street>? streets,
    @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
    List<Family>? children,
    @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
    List<Family>? parents,
    LastRecordedByInfo? lastEdit,
  }) = _Family;
  Family._() : super();

  factory Family.fromJson(Map<String, Object?> json) => _$FamilyFromJson(json);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('families', id, lastUpdatedTime: photoUpdatedAt);
}

List<Family>? familyChildrenFromJson(List? data) =>
    data?.map((e) => Family.fromJson(e['child'])).toList();
List<Json>? familyChildrenToJson(List<Family>? hobbies) =>
    hobbies?.map((e) => {'child': e.toJson()}).toList();

List<Family>? familyParentsFromJson(List? data) =>
    data?.map((e) => Family.fromJson(e['parent'])).toList();
List<Json>? familyParentsToJson(List<Family>? hobbies) =>
    hobbies?.map((e) => {'parent': e.toJson()}).toList();
