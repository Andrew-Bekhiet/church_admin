import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'church.freezed.dart';
part 'church.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'الكنائس')
class Church extends ViewableWithID with _$Church implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;

  const Church({
    required this.id,
    required this.name,
  });

  factory Church.fromJson(Map<String, Object?> json) => _$ChurchFromJson(json);

  @override
  Json toJson() => _$ChurchToJson(this);

  @override
  String get typeName => AdvancedQueriesMetadata().church.name;
}
