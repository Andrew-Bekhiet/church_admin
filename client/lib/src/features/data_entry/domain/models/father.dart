import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'father.freezed.dart';
part 'father.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'أباء الاعتراف')
class Father extends ViewableWithID with _$Father implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;

  @override
  @JsonKey(defaultValue: '')
  final String name;

  @override
  final String? churchId;

  @override
  final bool isHidden;

  @override
  String get typeName => AdvancedQueriesMetadata().father.name;

  const Father({
    required this.id,
    required this.name,
    this.isHidden = true,
    this.churchId,
  });

  factory Father.fromJson(Map<String, Object?> json) => _$FatherFromJson(json);

  @override
  Json toJson() => _$FatherToJson(this);
}
