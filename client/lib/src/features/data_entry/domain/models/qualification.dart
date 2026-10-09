import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualification.freezed.dart';
part 'qualification.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'المؤهلات')
class Qualification extends ViewableWithID
    with _$Qualification
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
  String get typeName => AdvancedQueriesMetadata().qualification.name;

  const Qualification({
    required this.id,
    required this.name,
  });

  factory Qualification.fromJson(Map<String, Object?> json) =>
      _$QualificationFromJson(json);

  @override
  Json toJson() => _$QualificationToJson(this);
}
