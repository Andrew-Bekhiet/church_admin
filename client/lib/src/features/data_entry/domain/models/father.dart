import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'father.freezed.dart';
part 'father.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'أباء الاعتراف')
class Father extends ViewableWithID with _$Father implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  final String? churchId;

  @override
  @QueryableField(label: 'isHidden')
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
