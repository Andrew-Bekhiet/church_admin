import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'school.freezed.dart';
part 'school.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'المدارس')
class School extends ViewableWithID with _$School implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;
  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  String get typeName => AdvancedQueriesMetadata().school.name;

  const School({
    required this.id,
    required this.name,
  });

  factory School.fromJson(Map<String, Object?> json) => _$SchoolFromJson(json);

  @override
  Json toJson() => _$SchoolToJson(this);
}
