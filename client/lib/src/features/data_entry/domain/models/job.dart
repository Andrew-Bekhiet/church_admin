import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'الوظائف')
class Job extends ViewableWithID with _$Job implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;

  const Job({
    required this.id,
    required this.name,
  });

  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);

  @override
  Json toJson() => _$JobToJson(this);

  @override
  String get typeName => AdvancedQueriesMetadata().job.name;
}
