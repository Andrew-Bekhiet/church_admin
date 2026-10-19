import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'الخدمات')
class Service extends ViewableWithIDAndImage
    with _$Service
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @QueryableField(label: 'السنة الدراسية: من')
  final StudyYear? studyYearFrom;

  @QueryableField(label: 'السنة الدراسية: إلى')
  final StudyYear? studyYearTo;

  final int? studyYearFromId;

  final int? studyYearToId;

  @QueryableField(label: 'الخدمة التالية')
  final Service? nextService;

  final String? nextServiceId;

  @QueryableField(label: 'الاجتماع الافتراضي')
  final Meeting? defaultMeeting;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @QueryableField(label: 'الفصول')
  final List<Class>? classes;

  @QueryableField(label: 'المجموعات')
  final List<Group>? groups;

  @QueryableField(label: 'meetings')
  final List<Meeting>? meetings;

  @JsonKey(name: 'latestEdit')
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @JsonKey(name: 'admins')
  @QueryableField(label: 'المسؤولون', graphqlName: 'admins', orderable: false)
  final List<User>? adminUsers;

  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('services', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().service.name;

  const Service({
    required this.id,
    required this.name,
    this.userCanEdit = false,
    this.studyYearFrom,
    this.studyYearTo,
    this.studyYearFromId,
    this.studyYearToId,
    this.nextService,
    this.nextServiceId,
    this.defaultMeeting,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.classes,
    this.groups,
    this.meetings,
    this.lastEdit,
    this.adminUsers,
  });

  factory Service.fromJson(Map<String, Object?> json) =>
      _$ServiceFromJson(json);

  @override
  Json toJson() => _$ServiceToJson(this);

  bool isOutsideStudyYearRangeOf(int grade) => switch (this) {
    Service(
      studyYearFrom: StudyYear(order: final minGrade),
      studyYearTo: StudyYear(order: final maxGrade),
    ) =>
      grade < minGrade || grade > maxGrade,
    Service(studyYearFrom: StudyYear(order: final minGrade)) =>
      grade < minGrade,
    Service(studyYearTo: StudyYear(order: final maxGrade)) => grade > maxGrade,
    _ => false,
  };
}
