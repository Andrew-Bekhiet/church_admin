import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
@TypeMetadata()
abstract class Job extends ViewableWithID
    with _$Job
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$JobFields;

  static final QueryableType<Job> queryableType = QueryableType<Job>(
    name: 'Job',
    label: 'الوظائف',
    fieldsMetadata: fieldsMetadata,
    fromJson: Job.fromJson,
  );

  factory Job({
    required String id,
    required String name,
  }) = _Job;
  Job._();

  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);

  @override
  String get typeName => Job.queryableType.name;
}
