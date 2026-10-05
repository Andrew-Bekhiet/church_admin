import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shammas_level.freezed.dart';
part 'shammas_level.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'رتب الشموسية')
class ShammasLevel extends ViewableWithID
    with _$ShammasLevel
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: 0)
  @QueryableField(label: 'الترتيب')
  final int order;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  String get typeName => AdvancedQueriesMetadata().shammasLevel.name;

  const ShammasLevel({
    required this.order,
    required this.name,
    required this.id,
  });

  factory ShammasLevel.fromJson(Map<String, Object?> json) =>
      _$ShammasLevelFromJson(json);

  @override
  Json toJson() => _$ShammasLevelToJson(this);
}
