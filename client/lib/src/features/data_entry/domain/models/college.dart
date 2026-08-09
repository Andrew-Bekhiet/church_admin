import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'college.freezed.dart';
part 'college.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'الكليات')
class College extends ViewableWithID
    with _$College
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  final String? universityId;

  @override
  String get typeName => AdvancedQueriesMetadata().college.name;

  const College({
    required this.id,
    required this.name,
    this.universityId,
  });

  factory College.fromJson(Map<String, Object?> json) =>
      _$CollegeFromJson(json);

  @override
  Json toJson() => _$CollegeToJson(this);
}
