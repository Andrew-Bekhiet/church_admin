// ignore_for_file: invalid_annotation_target

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
@TypeMetadata()
class Area extends ViewableWithIDAndImage
    with _$Area
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$AreaFields;

  static final QueryableType<Area> queryableType = QueryableType<Area>(
    name: 'Area',
    label: 'المناطق',
    fieldsMetadata: fieldsMetadata,
    fromJson: Area.fromJson,
  );

  factory Area({
    required String id,
    required String name,
    @JsonKey(fromJson: polygonFromJson, toJson: polygonToJson) Polygon? bounds,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    LastRecordedByInfo? lastVisit,
    LastRecordedByInfo? lastEdit,
    @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
    List<User>? adminUsers,
  }) = _Area;
  Area._() : super();

  factory Area.fromJson(Map<String, Object?> json) => _$AreaFromJson(json);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('areas', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => Area.queryableType.name;
}

List<User>? adminUsersFromJson(List? data) =>
    data?.map((e) => User.fromJson(e['user'])).toList();
List<Json>? adminUsersToJson(List<User>? users) =>
    users?.map((e) => {'user': e.toJson()}).toList();
