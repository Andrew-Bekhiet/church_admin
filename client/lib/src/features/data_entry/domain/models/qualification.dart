import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualification.freezed.dart';
part 'qualification.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'المؤهلات')
class Qualification extends ViewableWithID
    with _$Qualification
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;

  const Qualification({
    required this.id,
    required this.name,
  });

  factory Qualification.fromJson(Map<String, Object?> json) =>
      _$QualificationFromJson(json);

  @override
  Json toJson() => _$QualificationToJson(this);

  @override
  String get typeName => AdvancedQueriesMetadata().qualification.name;
}
