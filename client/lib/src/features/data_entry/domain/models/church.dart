import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'church.freezed.dart';
part 'church.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'الكنائس')
class Church extends ViewableWithID with _$Church implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  @QueryableField(label: 'isHidden')
  final bool isHidden;

  @override
  String get typeName => AdvancedQueriesMetadata().church.name;

  const Church({
    required this.id,
    required this.name,
    this.isHidden = true,
  });

  factory Church.fromJson(Map<String, Object?> json) => _$ChurchFromJson(json);

  @override
  Json toJson() => _$ChurchToJson(this);
}
