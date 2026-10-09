import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'الوظائف')
class Job extends ViewableWithID with _$Job implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;
  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  String get typeName => AdvancedQueriesMetadata().job.name;

  const Job({
    required this.id,
    required this.name,
  });

  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);

  @override
  Json toJson() => _$JobToJson(this);
}
