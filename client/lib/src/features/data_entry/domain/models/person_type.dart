import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_type.freezed.dart';
part 'person_type.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'نوع الفرد في العائلة', labelsOverrides: {
  'isHidden': 'مخفي',
})
class PersonType extends ViewableWithID
    with _$PersonType
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;

  @override
  @JsonKey(defaultValue: '')
  final String name;

  @override
  final int order;

  @override
  final bool isFamilyAdmin;

  @override
  final bool isHidden;

  const PersonType({
    required this.id,
    required this.name,
    this.order = 0,
    this.isFamilyAdmin = false,
    this.isHidden = true,
  });

  factory PersonType.fromJson(Map<String, Object?> json) =>
      _$PersonTypeFromJson(json);

  @override
  Json toJson() => _$PersonTypeToJson(this);

  @override
  String get typeName => AdvancedQueriesMetadata().personType.name;
}
