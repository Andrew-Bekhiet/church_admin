import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'street.freezed.dart';
part 'street.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'الشوارع', extensible: true)
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

  @JsonKey(fromJson: lineFromJson, toJson: lineToJson)
  @QueryableField(label: 'الموقع')
  final Line? line;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @QueryableField(label: 'المناطق', orderable: false)
  final List<Area>? areas;

  @JsonKey(name: 'latestVisit')
  @QueryableField(label: 'أخر افتقاد')
  final LastRecordedByInfo? lastVisit;

  @JsonKey(name: 'latestEdit')
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  @override
  ObjectImageInfo get imageInfo => ObjectPhotoInfo(
    Enum_PhotoSubject.STREETS,
    id,
    lastUpdatedTime: photoUpdatedAt,
  );

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
}

// Extends the generated private base, which only this library can see
// ignore: solid_lints/avoid_multiple_declarations_per_file
class StreetFields extends _StreetFields {
  static final StreetFields _instance = StreetFields._();

  FieldMetadata<AreasStreets> get areasRel => FieldMetadata<AreasStreets>(
    parentType: Street,
    name: 'areaStreets',
    label: 'areas',
    isCodeOnly: true,
    isOrderable: false,
    getValue: (obj) => obj is Street ? obj.areas : null,
  );

  factory StreetFields() => _instance;

  StreetFields._();
}
