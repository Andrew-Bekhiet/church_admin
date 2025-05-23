import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@freezed
@TypeMetadata(labelsOverrides: {'serviceStudyYear': 'ترتيب السنة الدراسية'})
abstract class Class extends ViewableWithIDAndImage
    with _$Class
    implements SerializableExtra, AttendanceAnalyzable {
  static Map<String, FieldMetadata> get fieldsMetadata => _$ClassFields;

  static final QueryableType<Class> queryableType = QueryableType<Class>(
    name: 'Class',
    label: 'الفصول',
    fieldsMetadata: fieldsMetadata,
    fromJson: Class.fromJson,
  );

  factory Class({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Service? service,
    String? serviceId,
    StudyYear? studyYear,
    int? serviceStudyYear,
    bool? serviceGender,
    LastRecordedByInfo? lastEdit,
    @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
    List<User>? adminUsers,
    HistoryAggregateData? attendanceHistoryAggregate,
    HistoryAggregateData? attendanceDaysConstraintsAggregate,
  }) = _Class;
  Class._() : super();

  factory Class.fromJson(Map<String, Object?> json) => _$ClassFromJson(json);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('classes', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => Class.queryableType.name;
}
