import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'street.freezed.dart';
part 'street.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'الشوارع')
class Street extends ViewableWithIDAndImage
    with _$Street
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
  @JsonKey(fromJson: lineFromJson, toJson: lineToJson)
  @QueryableField(label: 'الموقع')
  final Line? line;

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
  @JsonKey(fromJson: streetsAreasFromJson, toJson: streetsAreasToJson)
  @QueryableField.manyToMany(through: AreasStreets)
  final List<Area>? areas;

  @override
  @QueryableField(label: 'أخر افتقاد')
  final LastRecordedByInfo? lastVisit;

  @override
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @override
  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('streets', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().street.name;

  const Street({
    required this.id,
    required this.name,
    this.userCanEdit = false,
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

  Input_StreetsInsertInput toInsertInput() => Input_StreetsInsertInput(
    name: name,
    line: line?.asPostGISLineString(),
    color: colorToInt(color),
    areas: Input_AreasStreetsArrRelInsertInput(
      data:
          areas
              ?.map(
                (a) => Input_AreasStreetsInsertInput(areaId: a.id.toUuid()),
              )
              .toList() ??
          [],
      onConflict: Input_AreasStreetsOnConflict(
        constraint: Enum_AreasStreetsConstraint.areas_streets_pk,
      ),
    ),
  );

  Input_StreetsSetInput toUpdateInput({required Street oldStreet}) {
    Input_StreetsSetInput result = Input_StreetsSetInput();

    if (name != oldStreet.name) {
      result = result.copyWith(name: name);
    }

    if (line != oldStreet.line) {
      result = result.copyWith(line: line?.asPostGISLineString());
    }

    if (color != oldStreet.color) {
      result = result.copyWith(color: colorToInt(color));
    }

    return result;
  }
}

List<Area>? streetsAreasFromJson(List? data) =>
    data?.map((e) => Area.fromJson(e['area'])).toList();
List<Json>? streetsAreasToJson(List<Area>? areas) =>
    areas?.map((e) => {'area': e.toJson()}).toList();
