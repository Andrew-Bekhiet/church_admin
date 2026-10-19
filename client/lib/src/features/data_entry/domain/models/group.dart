import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'المجموعات')
class Group extends ViewableWithIDAndImage
    with _$Group
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

  final String? serviceId;

  @QueryableField(label: 'الخدمة')
  final Service? service;

  @QueryableField(label: 'الاجتماع الافتراضي')
  final Meeting? defaultMeeting;

  @QueryableField(label: 'meetings')
  final List<Meeting>? meetings;

  @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
  @QueryableField(label: 'validity', codeOnly: true)
  final DateTimeRange? validity;

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
      FunctionsObjectImageInfo('groups', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().group.name;

  const Group({
    required this.id,
    required this.name,
    this.userCanEdit = false,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.serviceId,
    this.service,
    this.defaultMeeting,
    this.validity,
    this.meetings,
    this.lastEdit,
    this.adminUsers,
  });

  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);

  @override
  Json toJson() => _$GroupToJson(this);
}
