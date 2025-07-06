import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'street.freezed.dart';
part 'street.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'الشوارع')
class Street extends ViewableWithIDAndImage
    with _$Street
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(fromJson: lineFromJson, toJson: lineToJson)
  final Line? line;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  @override
  @JsonKey(fromJson: streetsAreasFromJson, toJson: streetsAreasToJson)
  @QueryableField(manyToManyRelType: AreasStreets)
  final List<Area>? areas;
  @override
  final LastRecordedByInfo? lastVisit;
  @override
  final LastRecordedByInfo? lastEdit;

  const Street({
    required this.id,
    required this.name,
    this.line,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.areas,
    this.lastVisit,
    this.lastEdit,
  });

  factory Street.fromJson(Map<String, Object?> json) => _$StreetFromJson(json);

  @override
  Json toJson() => _$StreetToJson(this);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('streets', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().street.name;
}

List<Area>? streetsAreasFromJson(List? data) =>
    data?.map((e) => Area.fromJson(e['area'])).toList();
List<Json>? streetsAreasToJson(List<Area>? areas) =>
    areas?.map((e) => {'area': e.toJson()}).toList();
