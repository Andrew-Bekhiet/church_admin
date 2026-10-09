import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_recorded_by_info.freezed.dart';
part 'last_recorded_by_info.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'بيانات آخر تسجيل')
class LastRecordedByInfo extends ViewableWithID
    with _$LastRecordedByInfo
    implements SerializableExtra {
  @override
  @LocalDateTimeConverter()
  @QueryableField(label: 'الوقت')
  final DateTime time;

  @override
  @JsonKey(readValue: readRecordedBy)
  final String? recordedBy;

  @override
  @QueryableField(label: 'بيانات الخادم')
  final User? user;

  @override
  @QueryableField(label: 'زيارة أب كاهن', orderable: false)
  final bool isFatherVisit;

  @override
  String get id => time.toIso8601String();

  @override
  String get name => time.toString();

  @override
  String get typeName => AdvancedQueriesMetadata().lastRecordedByInfo.name;

  LastRecordedByInfo({
    this.isFatherVisit = false,
    DateTime? time,
    this.recordedBy,
    this.user,
  }) : time = time ?? DateTime.now();

  factory LastRecordedByInfo.fromJson(Map<String, Object?> json) =>
      _$LastRecordedByInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LastRecordedByInfoToJson(this);
}

String? readRecordedBy(Map json, String _) =>
    json['recordedBy'] ?? json['recorded_by'];
