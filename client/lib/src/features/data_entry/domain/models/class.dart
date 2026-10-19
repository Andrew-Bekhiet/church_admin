import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'الفصول')
class Class extends ViewableWithIDAndImage
    with _$Class
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
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @QueryableField(label: 'الخدمة')
  final Service? service;

  final String? serviceId;

  @JsonKey(name: 'studyYearFrom')
  @QueryableField(label: 'السنة الدراسية', graphqlName: 'studyYearFrom')
  final StudyYear? studyYear;

  final int? serviceStudyYear;

  @QueryableField(label: 'السنة الدراسية: إلى')
  final StudyYear? studyYearTo;

  final int? serviceStudyYearTo;

  @QueryableField(label: 'نوع المخدومين المسؤول عنهم')
  final bool? serviceGender;

  @JsonKey(name: 'latestEdit')
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @JsonKey(name: 'admins')
  @QueryableField(label: 'المسؤولون', graphqlName: 'admins', orderable: false)
  final List<User>? adminUsers;

  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  @override
  ObjectImageInfo get imageInfo => ObjectPhotoInfo(
    Enum_PhotoSubject.CLASSES,
    id,
    lastUpdatedTime: photoUpdatedAt,
  );

  @override
  String get typeName => AdvancedQueriesMetadata().$class.name;

  int? get studyYearFromOrder => studyYear?.order ?? serviceStudyYear;

  int? get studyYearToOrder =>
      studyYearTo?.order ?? serviceStudyYearTo ?? studyYearFromOrder;

  bool get spansStudyYearRange => studyYearFromOrder != studyYearToOrder;

  String? get studyYearRangeName => switch ((studyYear, studyYearTo)) {
    (final from?, final to?) when spansStudyYearRange =>
      '${from.name} - ${to.name}',
    (final from?, _) => from.name,
    _ => null,
  };

  const Class({
    required this.id,
    required this.name,
    this.userCanEdit = false,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.service,
    this.serviceId,
    this.studyYear,
    this.serviceStudyYear,
    this.studyYearTo,
    this.serviceStudyYearTo,
    this.serviceGender,
    this.lastEdit,
    this.adminUsers,
  });

  factory Class.fromJson(Map<String, Object?> json) => _$ClassFromJson(json);

  @override
  Json toJson() => _$ClassToJson(this);
}
